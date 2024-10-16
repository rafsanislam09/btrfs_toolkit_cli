import 'dart:io';
import 'package:btrfs_toolkit/universalconsts.dart';
import 'package:btrfs_toolkit/pages/defragmenter_and_compresser.dart'
    as DefragmenterCompresser;

void homePage() {
  print(blue("BTRFS ToolKit"));
  print("What do you want to do?");
  print("1.BTRFS Defragmentation");
  print("2.BTRFS Check Filesystem");
  stdout.write("Select:");

  String? selectedTool = stdin.readLineSync()!;
  int? selectedToolInt =
      int.tryParse(selectedTool); //try parsing to int the input
  if (selectedToolInt == 1) {
    DefragmenterCompresser.main();
  } else {
    whenInputIsInvalid();
  }
}

void whenInputIsInvalid() {
  print("Invalid input. Want to restart application?");
  stdout.write("y/N:");
  String? restart = stdin.readLineSync();
  if (restart == "y" || restart == "Y") {
    homePage();
  } else if (restart == "n" || restart == "N") {
    print("Bye!");
    exit(0);
  } else {
    print("Oh, you are boring! I'm exiting...");
    exit(0);
  }
}
