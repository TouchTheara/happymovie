import 'package:get/get.dart';

import '../../home_screen/model/movie_model/movie_model.dart';

class MoviesController extends GetxController {
  final appBarTitle = ''.obs;
  final isFav = false.obs;
  final currentIndex = 100.obs;
  final stringName = ''.obs;
  final model = const MovieModel().obs;
}
