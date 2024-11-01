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

//Warning for restarting or closing application
final String restartWarning = "Selecting N (No) will exit the program.";
//Function to restart application
void restartApplication(restartPrompt) {
  if (restartPrompt == "y" || restartPrompt == "Y") {
    homePage.homePage();
  } else if (restartPrompt == "n" || restartPrompt == "N") {
    print("Bye!");
    exit(0);
  } else {
    print("Oh, you are boring! I'm exiting...");
    exit(0);
  }
}
