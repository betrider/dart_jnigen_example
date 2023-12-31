import 'dart:io';

import 'package:dart_jnigen_example/example.dart';
import 'package:jni/jni.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart' as path;

void main(List<String> args) {
  // Prerequisites:
  // Run `dart run jni:setup -p jni -s src/example`
  // Run `javac java/dev/dart/Example.java`
  if (args.length != 2) {
    print('There needs to be exactly 2 arguments!');
    exit(1);
  }
  Jni.spawn(
    dylibDir: path.join('build', 'jni_libs'),
    classPath: ['java'],
  );
  try {
    final a = int.parse(args[0]);
    final b = int.parse(args[1]);
    print(Example.sum(a, b)); // prints a + b
  } on FormatException catch (_) {
    print('The arguments must be integers.');
    exit(1);
  }
}