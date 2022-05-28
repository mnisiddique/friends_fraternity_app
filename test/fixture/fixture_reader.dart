import 'dart:io';

String testCaseNo(int num, String testee) => "Test Case $num: $testee";
String fixture(String name) => File('test/fixture/$name').readAsStringSync();
