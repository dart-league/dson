import 'package:build/build.dart';
import 'package:built_mirrors/init_mirrors_generator.dart';
import 'package:built_mirrors/mirrors_generator.dart';
import 'package:serializable/generator.dart';
import 'package:source_gen/source_gen.dart';

/// Creates a `built_mirrors` generator-builder phase.
///
/// Example: {@example /tool/build.dart}
/// Example: {@example /tool/watch.dart}
Builder builder(_) => SharedPartBuilder([SerializableGenerator(useClassMirrors: true), MirrorsGenerator(), InitMirrorsGenerator()], 'dson');
