import 'package:build/build.dart';
import 'package:built_mirrors_core/mirrors_generator.dart';
import 'package:built_mirrors_core/init_mirrors_generator.dart';
import 'package:dson_core/generator.dart';
import 'package:source_gen/source_gen.dart';

/// Creates a `built_mirrors` generator-builder phase.
///
/// Example: {@example /tool/build.dart}
/// Example: {@example /tool/watch.dart}
Builder builder(_) => new PartBuilder(const [
          const DsonGenerator(),
          const MirrorsGenerator(),
          const InitMirrorsGenerator()
        ], '.g.dart');
