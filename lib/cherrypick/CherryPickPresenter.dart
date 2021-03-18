class CherryPickPresenter {
  String getHashes(String input) {
    var lines = input.split("\n");
    var hashes = new List();
    for (var i = 0; i < lines.length; i++) {
      var line = lines[i].trimLeft();
      if (line.isNotEmpty) {
        hashes.add(line.substring(0, line.indexOf(' ')));
      }
    }
    return hashes.reversed.join(" ");
  }
}