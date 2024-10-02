import 'package:e_clot_shop/features/bottom_navigation_bar/presentation/views/bottom_navigation_bar_view.dart';
import 'package:e_clot_shop/features/login/presentation/views/login_view.dart';
import 'package:e_clot_shop/features/login/presentation/views/tell_about_view.dart';
import 'package:e_clot_shop/features/register/presentation/views/register_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/categories_view.dart';
import '../../features/home/presentation/views/category_products_view.dart';
import '../../features/login/presentation/views/check_email_view.dart';
import '../../features/login/presentation/views/forget_password_view.dart';
import '../../features/login/presentation/views/login_password_view.dart';
import '../../features/splash/presentation/views/onboarding/presentation/views/on_boardring_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

class AppRouter {
  static const onBoardring = '/onBoardingView';
  static const login = '/loginView';
  static const register = '/registerView';
  static const loginPassword = '/loginPasswordView';
  static const forgetPassword = '/forgetPasswordView';
  static const checkEmail = '/checkEmailView';
  static const tellAbout = '/tellAboutView';
  static const bottomNavigationBar = '/bottomNavigationBarView';
  static const categories = '/categoriesView';
  static const categoryProducts = '/categoryProductsView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
          path: onBoardring,
          builder: (context, state) => const OnBoardringView()),
      GoRoute(path: login, builder: (context, state) => const LoginView()),
      GoRoute(
          path: register, builder: (context, state) => const RegisterView()),
      GoRoute(
          path: loginPassword,
          builder: (context, state) => const LoginPasswordView()),
      GoRoute(
          path: forgetPassword,
          builder: (context, state) => const ForgetPasswordView()),
      GoRoute(
          path: checkEmail,
          builder: (context, state) => const CheckEmailView()),
      GoRoute(
          path: tellAbout, builder: (context, state) => const TellAboutView()),
      GoRoute(
          path: bottomNavigationBar,
          builder: (context, state) => const BottomNavigationBarView()),
      GoRoute(
          path: categories,
          builder: (context, state) => const CategoriesView()),
      GoRoute(
          path: categoryProducts,
          builder: (context, state) => const CategoryProductsView()),
    ],
  );
}
