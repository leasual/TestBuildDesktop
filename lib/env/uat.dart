
import 'package:deconz_app/env/env.dart';

import 'env_fields.dart';

class UatEnv implements Env, EnvFields {

  const UatEnv();

  @override
  String get serverURL => 'uat';

}