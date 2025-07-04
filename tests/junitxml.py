#!/usr/bin/env python
"""
Process the JUnit XML files.

The intention of this script is to take number of JUnit XML script containing an
arbitrary number of test suites each, and put them all together in a single
file, or to produce a nice summary of the tests.
"""

import argparse
import copy
import os
import sys
import xml.etree.ElementTree as ET


def expect_int(value):
    """
    Expect an integer to be passed, but if it isn't, we'll return None rather than
    generate exceptions.
    """
    if value is not None:
        try:
            value = int(value)
        except ValueError:
            value = None
    return value


def expect_float(value):
    """
    Expect an float to be passed, but if it isn't, we'll return None rather than
    generate exceptions.
    """
    if value is not None:
        try:
            value = float(value)
        except ValueError:
            value = None
    return value


def sum_or_none(iterable):
    """
    Expect to be able to sum the values, but return 'None' if all the values were 'None'.
    """
    total = None
    try:
        for value in iterable:
            if value is not None:
                if total is None:
                    total = value
                else:
                    total += value

    except ValueError:
        total = None
    return total


class TestXML(object):

    def __init__(self, xmlfile=None):
        if xmlfile is not None:
            tree = ET.parse(xmlfile)
            root = tree.getroot()
            if root.tag == 'testsuites':
                testsuites = root.findall('./testsuite')
                self.suites = [TestSuite(suite_node) for suite_node in testsuites]
            elif root.tag == 'testsuite':
                self.suites = [TestSuite(root)]
            else:
                # Cannot interpret it, so giving up
                self.suites = None
        else:
            self.suites = []

    def __add__(self, other):
        if not isinstance(other, TestXML):
            raise TypeError("Cannot add a TextXML to a '%r'" % (other,))

        new = TestXML(None)
        new.suites = copy.deepcopy(self.suites)
        new.suites.extend(other.suites)
        return new

    def __iadd__(self, other):
        if not isinstance(other, TestXML):
            raise TypeError("Cannot add a TextXML to a '%r'" % (other,))

        self.suites.extend(other.suites)
        return self

    @property
    def n_tests(self):
        return sum_or_none(suite.n_tests for suite in self.suites)

    @property
    def n_disabled(self):
        return sum_or_none(suite.n_disabled for suite in self.suites)

    @property
    def n_skip(self):
        return sum_or_none(suite.n_skip for suite in self.suites)

    @property
    def n_errors(self):
        return sum_or_none(suite.n_errors for suite in self.suites)

    @property
    def n_failures(self):
        return sum_or_none(suite.n_failures for suite in self.suites)

    @property
    def n_passes(self):
        total = self.n_tests
        not_passes = sum_or_none((self.n_failures, self.n_skip, self.n_errors, self.n_disabled))
        if total is None or not_passes is None:
            return None
        return total - not_passes

    def set_ci_properties(self):
        if self.suites:
            for suite in self.suites:
                suite.set_ci_properties()

    def xml(self):
        root = ET.Element('testsuites')

        if self.n_tests is not None:
            root.set('tests', str(self.n_tests))
        if self.n_disabled is not None:
            root.set('disabled', str(self.n_disabled))
        if self.n_errors is not None:
            root.set('errors', str(self.n_errors))
        if self.n_skip is not None:
            root.set('skipped', str(self.n_skip))
        if self.n_failures is not None:
            root.set('failures', str(self.n_failures))

        for suite in self.suites:
            root.append(suite.xml())

        return ET.ElementTree(root)


class TestSuite(object):
    """
    <testsuite name=""      <!-- Full (class) name of the test for non-aggregated testsuite documents.
                                 Class name without the package for aggregated testsuites documents. Required -->
               tests=""     <!-- The total number of tests in the suite, required. -->
               disabled=""  <!-- the total number of disabled tests in the suite. optional -->
               errors=""    <!-- The total number of tests in the suite that errored. An errored test is one that had
                                 an unanticipated problem, for example an unchecked throwable; or a problem with the
                                 implementation of the test. optional -->
               failures=""  <!-- The total number of tests in the suite that failed. A failure is a test which the code
                                 has explicitly failed by using the mechanisms for that purpose. e.g., via an
                                 assertEquals. optional -->
               hostname=""  <!-- Host on which the tests were executed. 'localhost' should be used if the hostname
                                 cannot be determined. optional -->
               id=""        <!-- Starts at 0 for the first testsuite and is incremented by 1 for each following
                                 testsuite -->
               package=""   <!-- Derived from testsuite/@name in the non-aggregated documents. optional -->
               skipped=""   <!-- The total number of skipped tests. optional -->
               time=""      <!-- Time taken (in seconds) to execute the tests in the suite. optional -->
               timestamp="" <!-- when the test was executed in ISO 8601 format (2014-01-21T16:17:18).
                                 Timezone may not be specified. optional -->
               group=""     <!-- (surefire tests) group of the test suite. optional -->
               file=""      <!-- (junit-7.xsd/PHPunit) filename? optional -->
               assertions=""<!-- (junit-7.xsd) count of assertions? optional -->
              >
    """

    def __init__(self, suite):
        self.name = suite.attrib.get('name', None)
        self.package = suite.attrib.get('package', None)
        self.hostname = suite.attrib.get('hostname', None)
        # id is actually a string
        self.id = suite.attrib.get('id', None)
        self.time = expect_float(suite.attrib.get('time', None))
        self.timestamp = suite.attrib.get('timestamp', None)
        # PHPunit also reports 'file'
        self.file = suite.attrib.get('file', None)

        # Counts, which might not be specified
        self.n_tests = expect_int(suite.attrib.get('tests', None))
        self.n_disabled = expect_int(suite.attrib.get('disabled', None))
        self.n_errors = expect_int(suite.attrib.get('errors', None))
        self.n_failures = expect_int(suite.attrib.get('failures', None))
        # nose xunit generates 'skip'
        # specs I've seen use 'skipped'
        # nose2 junitxml documentation says it generates 'skips'
        # nose2 junitxml implementation uses 'skipped'
        # mocha junit generates 'skipped'
        # tap-xunit generates 'skipped'
        # xcpretty does not output skipped counts
        # xmlrunner unittest xml reporting generates 'skipped'
        self.n_skip = expect_int(suite.attrib.get('skip', suite.attrib.get('skipped', None)))
        # PHPunit reports assertions
        self.n_assertions = expect_int(suite.attrib.get('assertions', None))

        self.testcases = suite.findall('./testcase')
        self.testcases = copy.deepcopy(self.testcases)
        # Test cases can take the form:
        #   name        - test name
        #   classname   - test class. optional
        #   group       - (surefire tests) grouping. optional
        #   time        - time taken, in seconds
        #   assertions  - (junit-7.xsd) count of assertions?
        #   status      - (junit-7.xsd) ?
        #   class       - (junit-7.xsd) ?
        #   file        - (junit-7.xsd) ?
        #   line        - (junit-7.xsd) ?
        # And may contain descriptive blocks:
        #   failure     - failure occurred. (attrs: message, type, time)
        #   error       - error occurred. (attrs: message, type)
        #   rerunFailure- (surefire tests) ? (attrs: message, type)
        #   skipped     - (surefire tests/junit7.xsd) ? (attrs: message, type?)
        #   system-out  - stdout during the test. optional
        #   system-err  - stderr during the test. optional

        if self.n_tests is None:
            # We don't know the number of tests, so we will need to count them
            # And we cannot determine which tests were disabled as there is no
            # indication as far as can be seen.
            self.n_tests = (self.n_disabled or 0) + len(self.testcases)

        if self.n_errors is None:
            # We don't know the number of errors, so we will need to count them
            self.n_errors = len(suite.findall('./testcase/error'))

        if self.n_skip is None:
            # We don't know the number of errors, so we will need to count them
            self.n_skip = len(suite.findall('./testcase/skipped'))

        if self.n_failures is None:
            # We don't know the number of errors, so we will need to count them
            self.n_failures = len(suite.findall('./testcase/failure'))

        self.system_out = suite.find('./system-out')
        if self.system_out is not None:
            self.system_out = copy.deepcopy(self.system_out)

        self.system_err = suite.find('./system-err')
        if self.system_err is not None:
            self.system_err = copy.deepcopy(self.system_err)

        self.properties = suite.find('./properties')
        if self.properties is not None:
            self.properties = copy.deepcopy(self.properties)
            # Each property has attrs: name, value.

    def set_ci_properties(self):
        ci_vars = os.environ.get('CI_VARIABLES', '')
        if not ci_vars:
            return

        if self.properties is None:
            self.properties = ET.Element('properties')

        for ci_var in ci_vars.split():
            # Check if the property is already set
            ele = self.properties.find('./property[@name="%s"]' % (ci_var,))
            if ele is None:
                # No already set, so append it to those we have
                ele = ET.Element('property')
                ele.set('name', ci_var)
                ele.set('value', os.environ[ci_var])
                self.properties.append(ele)

    def xml(self):
        suite = ET.Element('testsuite')
        if self.n_tests is not None:
            suite.set('tests', str(self.n_tests))
        if self.n_skip is not None:
            suite.set('skipped', str(self.n_skip))
        if self.n_errors is not None:
            suite.set('errors', str(self.n_errors))
        if self.n_disabled is not None:
            suite.set('disabled', str(self.n_disabled))
        if self.n_failures is not None:
            suite.set('failures', str(self.n_failures))
        if self.n_assertions is not None:
            suite.set('assertions', str(self.n_assertions))

        if self.name is not None:
            suite.set('name', self.name)

        if self.file is not None:
            suite.set('file', self.file)

        if self.package is not None:
            suite.set('package', self.package)

        if self.hostname is not None:
            suite.set('hostname', self.hostname)

        if self.id is not None:
            # Note: This is MEANT to be incrementing, so might be wrong if we merge testsuites.
            suite.set('id', self.id)

        if self.time is not None:
            suite.set('time', str(self.time))

        if self.timestamp is not None:
            suite.set('timestamp', self.timestamp)

        if self.properties is not None:
            suite.append(self.properties)

        # NOTE: In the testcases, 'classname' is the field that is in the specification.
        #       PHPunit uses 'class'.
        suite.extend(self.testcases)
        if self.system_out is not None:
            suite.append(self.system_out)
        if self.system_err is not None:
            suite.append(self.system_err)

        return suite


def fix_nosetests(txml):
    """
    The 'nosetests' tool writes out a file with the 'testsuite.name' set to 'nosetests',
    and the 'testcase.classname' set to '<package>.<class>'. This function attempts to
    fix up such cases, so that 'testsuite.name' is the package, and 'testcase.classname'
    is the class alone.
    """
    for suite in txml.suites:
        if suite.name == 'nosetests':
            # The fix could be applied.
            name_is_common = None
            test_package = None
            for case in suite.testcases:
                # at present the testcases are actually still XML Nodes.
                classname = case.attrib.get('classname', None)
                if classname and '.' in classname:
                    tname, cname = classname.split('.', 1)
                    if not test_package:
                        test_package = tname
                        name_is_common = True
                    else:
                        if test_package != tname:
                            name_is_common = False
                            break

            if name_is_common:
                # We can make the replacement.
                for case in suite.testcases:
                    classname = case.attrib.get('classname', None)
                    if classname and '.' in classname:
                        tname, cname = classname.split('.', 1)
                    case.attrib['classname'] = cname

                suite.name = test_package


def main():
    usage = "junitxml <options> {<junit-files>}*"
    parser = argparse.ArgumentParser(usage=usage,
                                     formatter_class=argparse.ArgumentDefaultsHelpFormatter)

    parser.add_argument('--output', type=str,
                        help="Specify the JUnit output file", default=None)
    parser.add_argument('--fix-nosetests',
                        help="Move the package name to the test suite", default=False, action='store_true')
    parser.add_argument('--ci-properties',
                        help="Set the CI properties on all test suites", default=False, action='store_true')
    parser.add_argument('--show',
                        help="Output the results in a clean way", default=False, action='store_true')
    parser.add_argument('--summarise',
                        help="Output a summary of the results", default=False, action='store_true')
    parser.add_argument('files', nargs='+',
                        help='JUnit files to merge together')

    options = parser.parse_args()

    txml = TestXML()
    for xmlfile in options.files:
        txml += TestXML(xmlfile)

    if options.fix_nosetests:
        fix_nosetests(txml)

    if options.ci_properties:
        txml.set_ci_properties()

    if options.show:
        for suite in txml.suites:
            print("Suite: %s" % (suite.name,))
            if suite.hostname:
                print("  Host: %s" % (suite.hostname,))
            if suite.properties and len(suite.properties):
                props = dict()
                for ele in suite.properties:
                    key = ele.attrib.get('name', None)
                    value = ele.attrib.get('value', None)
                    if key and value:
                        props[key] = value
                if props:
                    print("  Properties:")
                    longest = max(len(key) for key in props)
                    for key, value in sorted(props.items()):
                        print("    %-*s : %s" % (longest, key, value))
            print("  Tests:")
            tests = []
            for case in suite.testcases:
                data = {
                    'name': case.attrib.get('name', str(len(tests))),
                    'class': case.attrib.get('class', None),
                    'time': case.attrib.get('time', 0),
                }
                state = 'unknown'
                content = None
                if case.find('./failure') is not None:
                    state = 'fail'
                    content = case.find('./failure')
                elif case.find('./error') is not None:
                    state = 'error'
                    content = case.find('./error')
                elif case.find('./skipped') is not None:
                    state = 'skipped'
                    content = case.find('./skipped')
                else:
                    state = 'passed'
                data['state'] = state
                data['message'] = content.attrib.get('message', None) if content is not None else None
                data['type'] = content.attrib.get('type', state) if content is not None else None
                data['content'] = content
                tests.append(data)

            longest = max(len(test['name']) for test in tests)

            for test in tests:
                print("    %-*s : %6.2fs : %s" % (longest, test['name'], float(test['time']), test['state']))
                if test['content'] is not None:
                    print("      %s: %s" % (test['type'], test['message']))
                    text = test['content'].text
                    if text:
                        text = text.strip()
                    if text:
                        for row in text.splitlines():
                            if sys.version_info >= (3,):
                                print("      %s" % (row,))
                            else:
                                print("      %s" % (row.encode('utf-8'),))

    if options.summarise:
        if options.show:
            print('')

        print("%-9s : %5s" % ('Passes', txml.n_passes or 0))
        print("%-9s : %5s" % ('Failures', txml.n_failures or 0))
        if txml.n_disabled:
            print("%-9s : %5s" % ('Disabled', txml.n_disabled))
        if txml.n_errors:
            print("%-9s : %5s" % ('Errors', txml.n_errors))
        if txml.n_skip:
            print("%-9s : %5s" % ('Skips', txml.n_skip))
        print("%-9s : %5s" % ('TOTAL', txml.n_tests))

    if options.output:
        xml = txml.xml()

        xml.write(options.output, encoding='UTF-8', xml_declaration=True)

    return 0

if __name__ == '__main__':
    sys.exit(main())
