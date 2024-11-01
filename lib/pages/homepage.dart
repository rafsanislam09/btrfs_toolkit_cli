import 'dart:io';
//Current Project Files
import 'package:btrfs_toolkit/universalconsts.dart' as commonCode;
import 'package:btrfs_toolkit/pages/defragmenter_and_compresser.dart'
    as DefragmenterCompresser;
import 'package:btrfs_toolkit/pages/summary.dart' as FilesystemSummary;

void homePage() {
  print(commonCode.blue("BTRFS ToolKit"));
  print("What do you want to do?");
  print("1.BTRFS Defragmentation");
  print("2.BTRFS Show summary of root filesystem");
  stdout.write("Select:");

  String? selectedTool = stdin.readLineSync()!;
  int? selectedToolInt =
      int.tryParse(selectedTool); //try parsing to int the input
  if (selectedToolInt == 1) {
    DefragmenterCompresser.main();
  } else if (selectedToolInt == 2) {
    FilesystemSummary.main();
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
