import 'package:get/get.dart';

import '../modules/exam/bindings/exam_binding.dart';
import '../modules/exam/views/exam_view.dart';
import '../modules/exam_detail/bindings/exam_detail_binding.dart';
import '../modules/exam_detail/views/exam_detail_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/main/bindings/main_binding.dart';
import '../modules/main/views/main_view.dart';
import '../modules/theory/bindings/theory_binding.dart';
import '../modules/theory/views/theory_view.dart';
import '../modules/theory_detail/bindings/theory_detail_binding.dart';
import '../modules/theory_detail/views/theory_detail_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.THEORY,
      page: () => TheoryView(),
      binding: TheoryBinding(),
    ),
    GetPage(
      name: _Paths.THEORY_DETAIL,
      page: () => TheoryDetailView(),
      binding: TheoryDetailBinding(),
    ),
    GetPage(
      name: _Paths.EXAM_DETAIL,
      page: () => ExamDetailView(),
      binding: ExamDetailBinding(),
    ),
    GetPage(
      name: _Paths.EXAM,
      page: () => ExamView(),
      binding: ExamBinding(),
    ),
  ];
}
