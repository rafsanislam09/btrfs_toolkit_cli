import 'dart:io';
//Current Project Files
import 'package:btrfs_toolkit/universalconsts.dart' as commonCode;

void main() async {
  //Introduce the script
  print("This program shows a summary of the root filesystem");
  await Process.run('sh', ['-c', 'btrfs fi df -H -h /']);

  print(commonCode.restartWarning);
  print("Want to restart application?");
  stdout.write("y/N:");
  String? restart = stdin.readLineSync();
  commonCode.restartApplication(restart);
}
