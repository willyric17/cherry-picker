class CherryPickPresenter {
  String getHashes(String input) {
    var lines = input.split("\n");
    var hashes = List(lines.length);
    for (var i = 0; i < lines.length; i++) {
      var line = lines[i].trimLeft();
      hashes[i] = line.substring(0, line.indexOf(' '));
    }
    return hashes.join(" ");
  }
}