// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

class _EnvDev {
  static const List<int> _enviedkeypass1 = [
    1606803117,
    2916906322,
    801753553,
    513379261,
    3184905120,
    1874848374,
    2685198251,
    328384072
  ];
  static const List<int> _envieddatapass1 = [
    1606803180,
    2916906256,
    801753490,
    513379321,
    3184905105,
    1874848324,
    2685198232,
    328384124
  ];
  static final pass1 = String.fromCharCodes(
    List.generate(_envieddatapass1.length, (i) => i, growable: false)
        .map((i) => _envieddatapass1[i] ^ _enviedkeypass1[i])
        .toList(growable: false),
  );
  static const List<int> _enviedkeypass2 = [
    4057347713,
    1937453309,
    2775678759,
    4216733312,
    823627681,
    978934046,
    834990750,
    2000687973
  ];
  static const List<int> _envieddatapass2 = [
    4057347780,
    1937453243,
    2775678816,
    4216733384,
    823627668,
    978934056,
    834990761,
    2000687965
  ];
  static final pass2 = String.fromCharCodes(
    List.generate(_envieddatapass2.length, (i) => i, growable: false)
        .map((i) => _envieddatapass2[i] ^ _enviedkeypass2[i])
        .toList(growable: false),
  );
}
