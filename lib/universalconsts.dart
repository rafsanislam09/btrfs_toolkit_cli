import 'dart:io';
import 'package:ansicolor/ansicolor.dart';
//Current Project Files
import 'package:btrfs_toolkit/pages/homepage.dart' as homePage;

final abc = "Hello";
final red = AnsiPen()..red();
final green = AnsiPen()..green();
final cyan = AnsiPen()..cyan();
final blue = AnsiPen()..blue();

late String restart;
void restartApplication() {
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
