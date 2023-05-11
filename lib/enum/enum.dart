enum Number {
  one(1),
  two(2),
  three(3);

  final int rawValue;
  const Number(this.rawValue);

  factory Number.from({required int rawValue}) {
    final value = Number.values.firstWhere((e) => e.rawValue == rawValue);
    return value;
  }
}

main() {
  // enum <== int
  // final enumValue = Number.from(rawValue: 1);
  // int <== enum
  // final intValue = Number.one.rawValue;
}
