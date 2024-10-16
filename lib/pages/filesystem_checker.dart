void main () {

  //Introduce the script
  print("BTRFS Filesystem Checker");
  print("This tool only checks if the root BTRFS volume is okay. It will not repair it. If you see there is any problem in the root volume, do not try to repair it manually nor use this tool to repair. Ask the developers of BTRFS or an experienced user for help if you get any problems in your filesystem.");
  print("Are you sure you want to continue?");
  print("1. Yes");
  print("2. No");
  stdout.write("Select: ");
  String? check = stdin.readLineSync()!;
  int? checkInt = int.tryParse(check); //try parsing to int the input
  if (checkInt == 1) {
    print("Checking filesystem...");
}