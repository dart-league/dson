import 'package:build_runner/build_runner.dart';
import 'package:built_mirrors/mirrors_generator.dart';
import 'package:built_mirrors/init_mirrors_generator.dart';
import 'package:dson/generator.dart';
import 'package:source_gen/source_gen.dart';

/// Creates a `built_mirrors` generator-builder phase.
///
/// Example: {@example /tool/build.dart}
/// Example: {@example /tool/watch.dart}
dsonPhase(String packageName, Iterable<String> globs) =>
    new Phase()
      ..addAction(
          new GeneratorBuilder(const [
            const DsonGenerator(),
            const MirrorsGenerator(),
            const InitMirrorsGenerator()
          ]),
          new InputSet(packageName, globs));