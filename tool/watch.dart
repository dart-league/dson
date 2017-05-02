import 'package:build_runner/build_runner.dart';
import 'package:dson/phase.dart';


main() async {
  await watch(new PhaseGroup()
    ..addPhase(
    // In next line replace `example/**.dart` for the globs you want to use as input, for example `**/*.dart`
    // to take all the dart files of the project as input.
        dsonPhase(const ['example/**.dart'])),
      deleteFilesByDefault: true);
}