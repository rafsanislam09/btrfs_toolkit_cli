import 'dart:io';
import 'package:btrfs_toolkit/universalconsts.dart';
import 'package:btrfs_toolkit/pages/homepage.dart' as homePage;

void main() async {
  //Introduce the script
  print(cyan("BTRFS Automatic Defragmentation and Compressor"));

  //Ask for compression method & create a variable for it
  var targetcompmethod;
  print(
      "Which compression method do you want to use for the whole root partition (/)?");
  print("1. zlib");
  print("2. lzo");
  print("3. zstd");
  print("4. No compression");
  stdout.write("Select: ");
  String? compmethod = stdin.readLineSync()!;
  int? compmethodInt = int.tryParse(compmethod); //try parsing to int the input
  if (compmethodInt == 1) {
    print("zlib selected");
    targetcompmethod = "-czlib";
  } else if (compmethodInt == 2) {
    print("lzo selected");
    targetcompmethod = "-clzo";
  } else if (compmethodInt == 3) {
    print("zstd selected");
    targetcompmethod = "-czstd";
  } else if (compmethodInt == 4) {
    print("No compression selected");
    targetcompmethod = "";
  } else {
    print(red("Invalid input"));
    homePage.homePage();
  }

  //Assign btrfs process command line inside 'defragprocess' variable
  final defragprocess = await Process.run('sh', [
    '-c',
    'sudo btrfs fi defrag -r $targetcompmethod /home/hashem/Pictures'
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
