import 'dart:io';

// for use project root directory.

void main() {
  var currentDir = Directory.current;
  var assetDirName = "assets";

  List<String> list = List<String>();
  currentDir
      .list(recursive: true, followLinks: false)
      .listen((FileSystemEntity entity) {
    list.add(entity.path);

    String p = entity.path;

    if (p.indexOf(assetDirName) != -1 && !p.contains("_assets") && !p.contains("cassets")) {
      p = p.substring(p.indexOf(assetDirName) - 1);

      if (!p.contains(".")) {
        if (Platform.isWindows) p = p.replaceAll("\\", "/");
        p = p.replaceFirst("/", "");
        print("- " + p + "/");
      }
    }
  });
}
