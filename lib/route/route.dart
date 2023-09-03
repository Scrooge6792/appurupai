import 'package:appurupai/screen/welcome.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  initialLocation: '/welcome',
  routes: [
    welcomeRoute,
  ]
);