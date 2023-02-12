import 'package:injectable/injectable.dart';
import 'package:redux/redux.dart';
import 'package:sunday/src/models/index.dart';

@singleton
class AppMiddleware {
  const AppMiddleware();

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[];
  }
}
