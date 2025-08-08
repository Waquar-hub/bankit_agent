import 'package:bankit_agent/features/auth/forgotPassword/view/forgot_password.dart';
import 'package:bankit_agent/features/auth/loginWithEmail/view/login_page.dart';
import 'package:bankit_agent/features/dashboard/dashboard.dart';
import 'package:bankit_agent/utils/routes_name.dart';
import 'package:go_router/go_router.dart';
import '../features/auth/loginWithEmail/view/register_mobile_number.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    // initialLocation: '/registerMobile',
    initialLocation: '/forgotPassword',
    routes: [
      GoRoute(
        path: '/',
        name: RoutesName.login,
        builder: (context, state) =>  LoginPage(),
      ),
      GoRoute(
        path: RoutesName.dashboard,
        name: 'dashboardPage',
        builder: (context, state) => const Dashboard(),
      ),
      GoRoute(
        path: RoutesName.registerMobile,
        name: 'registerMobile',
        builder: (context, state) => const RegisterMobileNumber(),
      ),
      GoRoute(
        path: '/forgotPassword',
        name: 'forgotPassword',
        builder: (context, state) =>  ForgotPassword(),
      ),


      /* GoRoute(
        path: '/details/:id',
        name: 'details',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return DetailsPage(id: id);
        },
      ),
      GoRoute(
        path: '/profile',
        name: 'profile',
        builder: (context, state) => const ProfilePage(),
      ),*/
    ],
    // errorBuilder: (context, state) => const ErrorPage(),
  );
}