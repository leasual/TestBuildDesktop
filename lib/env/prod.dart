
import 'package:deconz_app/env/env.dart';
import 'package:deconz_app/env/env_fields.dart';

class ProdEnv implements Env, EnvFields {

  const ProdEnv();

  @override
  String get serverURL => 'prod';

}