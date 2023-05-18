import 'package:envied/envied.dart';
part 'env.g.dart';

@Envied(path: 'scripts/env/.env.dev')
abstract class EnvDev {
  @EnviedField(varName: 'PASSWORD_1', obfuscate: true)
  static final pass1 = _EnvDev.pass1;
  @EnviedField(varName: 'PASSWORD_2', obfuscate: true)
  static final pass2 = _EnvDev.pass2;
}
