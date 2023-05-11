// ignore_for_file: file_names
// import 'package:encrypt/encrypt.dart';
// import 'package:encrypt/encrypt_io.dart';
// import 'package:pointycastle/asymmetric/api.dart';

// main() async {
//   signTest();
// }

// Future<void> signTest() async {
//   const strPubKey = """-----BEGIN PUBLIC KEY-----
// MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyWs6ObHD6vsN1Z3Cis0+5+BkUxz37mgLWUbiQoU+grevf0zB1Mm5wvclgc+cHjS83KVROaKkwGovaywOso6F+dzjYurI+N9oNXgY2vzcKqZOas6YbTxgHjEe6xy43DM3JM8Ov2h0H78uoC0P8M6y2qrdEIrSEbG9dpfZ98YGKh7J+MPyVNMAZgufBvihABPVh/+WY/PDF2w4uGhce16sx1rNLm0K7yrRv7EusYBWKIleycpyURcYZpDqGIfZaQlbd8NkdeuM1UMpvv5Bo4vyB4uO7OkvM9DS1UMJ+Z/lr7Efi3v4A/0Wri/42cD1TqhVS3d8Z+1V4uHCs0ELIH1WMQIDAQAB
// -----END PUBLIC KEY-----""";
//   final pubKey = RSAKeyParser().parse(strPubKey) as RSAPublicKey;
//   const strPvtKey = """-----BEGIN PRIVATE KEY-----
// MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDJazo5scPq+w3VncKKzT7n4GRTHPfuaAtZRuJChT6Ct69/TMHUybnC9yWBz5weNLzcpVE5oqTAai9rLA6yjoX53ONi6sj432g1eBja/Nwqpk5qzphtPGAeMR7rHLjcMzckzw6/aHQfvy6gLQ/wzrLaqt0QitIRsb12l9n3xgYqHsn4w/JU0wBmC58G+KEAE9WH/5Zj88MXbDi4aFx7XqzHWs0ubQrvKtG/sS6xgFYoiV7JynJRFxhmkOoYh9lpCVt3w2R164zVQym+/kGji/IHi47s6S8z0NLVQwn5n+WvsR+Le/gD/RauL/jZwPVOqFVLd3xn7VXi4cKzQQsgfVYxAgMBAAECggEBAKXMcUpqrSYxcIrl6O0O1HhU+uB7mQ8TcDwWIEu3mORLRdhZG7kIMLRvct1vQ0iOCuTp5Hm4CzwkbFIhGxwaO+iYzkhvke1jIUnaSUOCH82vxh8fXtOUfl57+sJ4iycftYXEN5SR6/zyB/RsA5Iq44kiWwSx8QgFsjr79r2BsTNbW+TvMqk2OsG2g1uMn+qYPAbdEtQgKJW6C3to+VB3dkKGQPQlPXY6wRpuD4Udh5380qWwTjLsfJXYIjCWybPqScqW2c153nPaMeklQ3E1P9ihTlC1+KqEAe/blERqCF0L5iOU6xfhbU3V8aSgxvtuyzZUWfyKplOvItAlh20OWD0CgYEA9PwlzS7PHP8ZeWnPUYjHNkGL0KooY01lMmQvEYOvbaFHgpPto1pmROpLYgbcae3JF4e4xOIzqctA+PbY4cFu1R5WAXAGfQ1GEGOziBTXHKs4GZU/UuQa2FtdvI3rJ58KLIQh+f5J/UMk2dyWs6JmQ6vEII3AdbIYNwRs9evC8tMCgYEA0nme34IBWEu5mbW0ZB3wIGztbUZ8blzikdAl0HVOSQYi6m5uVSD4M8QuOfKPtDK4Q94Qk7siW73+M8gx4c7sjOc+xpDRX5JX9w4lJxkVapDngDWV4Dz95vuSHXCmOPrf0APPqltrAtVi+tX04ws9AKAPABwm/MGcInKX7qRfyGsCgYB1XpAluzVS6QylVIIUx/jZD5ISiFMNMDk5aTH7rCFR3qDJ+GEzj83LWox/DFZxEZD0CvwEp3Kk+FHKdUj275tP01bVHXyeUMuucnXCzmk4vPcFmrFZ3xrVaQCBo2Rz+QgAx9UXVjLQeWigT8SLj1R7O0Gdbwwz1v0u7pndP/SILQKBgAj0/gra+H2uc06USgH8uCxZFl2RI1h7AXVdG07cvyEibrf1TSK4TXe+gI0cwnrTsb3JpID09MhctIW1nlHSwYRZjvVaUl6z1qR/6JraWWv4kLGHFkK9tbxvtk8kbR59pqqujtbcHxi2xgiQtGQ5JTZymVDS4eHdx2w73jVcr2rTAoGACdzqiqYUpoeWxN5h7dL0jO/QdMHfo+bgRtD7AlmhDx6W2xXPjRIXTIJNwmuH/oGMkMty3EX1GLeKqVPWDzLPCTFrCW6zqtHfhDSU9PAWVAfCEm0e1bTPoAH5+AxLBTTtxAGjyFiFqXQD3wvE+Ms5f5XOX8jfAZ8El4ZPIdBNUew=
// -----END PRIVATE KEY-----
// """;
//   final pvtKey = RSAKeyParser().parse(strPvtKey) as RSAPrivateKey;

//   final signer = Signer(
//     RSASigner(
//       RSASignDigest.SHA256,
//       publicKey: pubKey,
//       privateKey: pvtKey,
//     ),
//   );

//   final sig = signer.sign('hello world').base64;

//   print(
//     signer.verify64('hello world2', sig),
//   );
// }
