part 'routes.structure.dart';

class ConstantsRoutes {
  static const RouteDefinition splash = RouteDefinition(
    name: 'splash',
    path: '/',
    description: 'Splash Screen',
  );
  static const RouteDefinition networkError = RouteDefinition(
    name: 'networkError',
    path: '/network-error',
    description: 'Network Error Screen',
  );
  static const RouteDefinition home = RouteDefinition(
    name: 'home',
    path: '/home',
    description: 'Home Screen',
  );
}
