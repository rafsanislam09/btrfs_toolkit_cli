import 'dart:io';
//Current Project Files
import 'package:btrfs_toolkit/global.dart' as globals;

void main() async {
  //Introduce the script
  print("This program shows a summary of the root filesystem");
  await Process.run('sh', ['-c', 'btrfs fi df -H -h /']);

  globals.whenInputIsInvalid();
}
