import 'dart:io';
import 'package:btrfs_toolkit/pages/homepage.dart' as homePage;

void main() {
  //Introduce the script
  print("BTRFS Filesystem Checker");
  print(
      "This tool only checks if the root BTRFS volume is okay. It will not repair it. If you see there is any problem in the root volume, do not try to repair it before asking the developers of BTRFS or an experienced user for help if you get any problems in your filesystem.");
  print("Are you sure you want to continue?");
  stdout.write("y/N: ");
  String? check = stdin.readLineSync()!;
  if (check == "y" || check == "Y") {
    print("Checking filesystem...");
  } else {
    print("Going to Home Screen...");
    homePage.homePage();
  }
}
