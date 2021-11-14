class StringUtils {
  static String convertToTitleCase(String text) {
    if (text == null) throw ArgumentError("string: $text");

    if (text.isEmpty) return text;

    /// If you are careful you could use only this part of the code as shown in the second option.
    return text
        .split(' ')
        .map((word) => word[0].toUpperCase() + word.substring(1))
        .join(' ');
  }
}
