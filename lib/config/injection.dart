import 'package:fintech/config/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(initializerName: r'$initGetIt', preferRelativeImports: true, asExtension: false)
void injection() => $initGetIt(GetIt.instance);
