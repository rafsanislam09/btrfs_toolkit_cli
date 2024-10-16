import 'dart:io';
//Current Project Files
import 'package:btrfs_toolkit/universalconsts.dart';

void main() async {
  //Introduce the script
  print("This program shows a summary of the root filesystem");
  await Process.run('sh', ['-c', 'btrfs fi df -H -h /']);
  print("Want to restart application?");
  stdout.write("y/N:");
  String? restart = stdin.readLineSync();
  restartApplication();
}
