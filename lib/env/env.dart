
import 'package:deconz_app/env/env_fields.dart';
import 'package:deconz_app/env/prod.dart';
import 'package:deconz_app/env/uat.dart';

abstract class Env implements EnvFields {

  static const debug = true;

  factory Env() => _instance;

  static const Env _instance = debug ? UatEnv() : ProdEnv();

}