/*
This file defines the AppRoutes class, which is intended to manage the routing configuration for the application
However, the class is currently empty and does not contain any routing logic or definitions.
To implement routing, you would typically define static constants for route names and possibly methods to generate routes
or handle navigation logic. This class can be expanded in the future to include such functionality as needed.
*/
import 'package:go_router/go_router.dart';
import 'package:portfoli_app_workspace/global.dart'
    show ConstantsRoutes, NetworkErrorScreen;
import 'package:portfoli_app_workspace/modules/home/export.dart'
    show HomeScreen;
// import 'package:portfoli_app_workspace/modules/authentication/export.dart' show LoginScreen;
// import 'package:portfoli_app_workspace/modules/checkout/export.dart' show CheckoutScreen;

// GoRouter configuration
final router = GoRouter(
  initialLocation: ConstantsRoutes.home.path,

  redirect: (context, state) {
    // Example redirect logic (can be customized based on authentication status, etc.)
    // if (state.subloc == '/home' && !isLoggedIn) {
    //   return '/login';
    // }

    return null; // No redirection
  },
  routes: [
    GoRoute(
      name: ConstantsRoutes.home.name,
      path: ConstantsRoutes.home.path,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      name: ConstantsRoutes.networkError.name,
      path: ConstantsRoutes.networkError.path,
      builder: (context, state) => NetworkErrorScreen(),
    ),
  ],
);
