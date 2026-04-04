/*
This file defines the AppRoutes class, which is intended to manage the routing configuration for the application
However, the class is currently empty and does not contain any routing logic or definitions.
To implement routing, you would typically define static constants for route names and possibly methods to generate routes
or handle navigation logic. This class can be expanded in the future to include such functionality as needed.
*/
import 'package:go_router/go_router.dart';
import 'package:portfoli_app_workspace/global/router/routes/constants.routes.dart';
import 'package:portfoli_app_workspace/global/screens/network_error.screen.dart';
import 'package:portfoli_app_workspace/modules/home/screens/home.screen.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: ConstantsRoutes.home,

  redirect: (context, state) {
    // Example redirect logic (can be customized based on authentication status, etc.)
    // if (state.subloc == '/home' && !isLoggedIn) {
    //   return '/login';
    // }

    return null; // No redirection
  },
  routes: [
    GoRoute(
      path: ConstantsRoutes.home,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: ConstantsRoutes.networkError,
      builder: (context, state) => NetworkErrorScreen(),
    ),
  ],
);
