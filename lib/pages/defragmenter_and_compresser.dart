import 'dart:io';
//Current Project Files
import 'package:btrfs_toolkit/universalconsts.dart';
import 'package:btrfs_toolkit/pages/homepage.dart' as homePage;

void main() async {
  //Introduce the script
  print(cyan("BTRFS Automatic Defragmentation and Compressor"));

  //Ask for compression method & create a variable for it
  var targetcompMethod;
  print(
      "Which compression method do you want to use for the whole root partition (/)?");
  print("1. zlib");
  print("2. lzo");
  print("3. zstd");
  print("4. No compression");
  stdout.write("Select: ");

  Map<int, String> compMethods = {1: "-czlib", 2: "-clzo", 3: "-czstd", 4: ""};
  String? compMethod = stdin.readLineSync()!;
  int? compMethodInt = int.tryParse(compMethod); //try parsing to int the input

  if (compMethods.containsKey(compMethodInt)) {
    targetcompMethod = compMethods[compMethodInt]!;
    print(compMethodInt == 4
        ? "No compression selected"
        : "${targetcompMethod.substring(2)} compression selected");
  } else {
    print(red("Invalid input. Going to Home Screen..."));
    homePage.homePage();
  }

  //Assign btrfs process command line inside 'defragprocess' variable
  final defragprocess = await Process.run('sh', [
    '-c',
    'sudo btrfs fi defrag -r $targetcompMethod /home/hashem/Pictures'
  ]);

  //Execute and check the defragprocess
  if (defragprocess.exitCode == 0) {
    print(defragprocess.stdout);
    print(green("Successfully defragged whole filesystem"));
  } else {
    print(defragprocess.stderr);
    print(red("Could not defrag filesystem"));
  }
}
