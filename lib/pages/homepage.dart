import 'dart:io';
//Current Project Files
import 'package:btrfs_toolkit/global.dart' as globals;
import 'package:btrfs_toolkit/pages/defragmenter_and_compresser.dart'
    as DefragmenterCompresser;
import 'package:btrfs_toolkit/pages/summary.dart' as FilesystemSummary;

void homePage() {
  print(globals.blue("BTRFS ToolKit"));
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
    globals.restartApp();
  }
}
