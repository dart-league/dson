import 'package:build_runner/build_runner.dart';
import 'package:dson/action.dart';


main() async {
  await build(
    // In next line replace `['test/**.dart', 'example/**.dart']` for the globs you want to use as input,
    // for example `**/*.dart` to take all the dart files of the project as input.
      [dsonAction(const ['test/**.dart', 'example/**.dart', 'bench/**.dart'])],
      deleteFilesByDefault: true);
}
