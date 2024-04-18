extension StringExt on String {
  String get customSearch {
    String tmp = trim();
    String replace = tmp.replaceAll(' ', '%20');

    return replace;
  }

  bool get hasSpellOrTrap {
    return toLowerCase().contains('spell') || toLowerCase().contains('trap');
  }
}
