import 'dart:io';
import 'package:ansicolor/ansicolor.dart';
//Current Project Files
import 'package:btrfs_toolkit/pages/homepage.dart' as homePage;

//Global Variables

//Here AnsiPen is a data type provided by "ansicolor" library for coloring text with ANSI escape sequences.
final hello = "Hello";
final AnsiPen red = AnsiPen()..red();
final AnsiPen green = AnsiPen()..green();
final AnsiPen cyan = AnsiPen()..cyan();
final AnsiPen blue = AnsiPen()..blue();

void whenInputIsInvalid() {
  print("Invalid input. Want to restart application?");
  stdout.write("y/N:");
  String? restart = stdin.readLineSync();
  if (restart == "y" || restart == "Y") {
    homePage.homePage();
  } else if (restart == "n" || restart == "N") {
    print("Bye!");
    exit(0);
  } else {
    print("Oh, you are boring! I'm exiting...");
    exit(0);
  }
}
