extension StringEnhancer on String {
  String toCompareHelper() {
    return toString().toLowerCase().trim();
  }
}

extension DateTimeEnhancer on DateTime {
  DateTime parseString() {
    return .parse(toString().toLowerCase().trim());
  }
}

// extension is a special method to upgrade the default datatype of dart either it string, num, ;etc
