// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:sunday/src/data/index.dart' as _i5;
import 'package:sunday/src/epics/app_epics.dart' as _i6;
import 'package:sunday/src/middleware/app_middleware.dart' as _i3;
import 'package:sunday/src/util/router.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AppMiddleware>(_i3.AppMiddleware());
    gh.factory<_i4.AppRouter>(() => _i4.AppRouter());
    gh.factory<_i5.GoalsApi>(() => _i5.GoalsApi());
    gh.factory<_i6.GoalsEpics>(() => _i6.GoalsEpics(api: gh<_i5.GoalsApi>()));
    gh.factory<_i6.AppEpics>(
        () => _i6.AppEpics(goalsEpics: gh<_i6.GoalsEpics>()));
    return this;
  }
}
