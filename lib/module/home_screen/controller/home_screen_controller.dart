import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../helper/api_base_helper.dart';
import '../model/movie_model/movie_model.dart';

class HomeScreenController extends GetxController {
  final activeIndex = 0.obs;
  var homeImageSliderList = [
    "https://cdn.theplaylist.net/wp-content/uploads/2022/05/14164920/Avatar-2-The-Way-Of-Water-750x400.jpg",
    "https://cdn.theplaylist.net/wp-content/uploads/2022/05/23222503/thor-love-and-thunder-poster-crop-750x400.jpg",
    "https://media.distractify.com/brand-img/Cx4Rk9-FP/0x0/gothamknightscw-1654121916394.jpg",
    "https://static1.colliderimages.com/wordpress/wp-content/uploads/2021/08/black-adam-everything-we-know-so-far.jpg?q=50&fit=contain&w=943&h=472&dpr=1.5",
    "https://images.thedirect.com/media/article_full/CM2.jpg",
    "https://ntvb.tmsimg.com/assets/p18935685_v_h8_aa.jpg?w=1280&h=720",
  ];

  var popularList = <MovieModel>[];
  final isLoading = false.obs;
  final ApiBaseHelper _apiBaseHelper = ApiBaseHelper();
  Future<List<MovieModel>> fetchPopularMovie() async {
    isLoading(false);
    await _apiBaseHelper
        .onNetworkRequesting(
            url: '/popular-movies',
            methode: METHODE.post,
            body: {"rate": 7, "start": "2019", "end": "2022"},
            isAuthorize: false)
        .then((value) {
      value['result'].map((value) {
        // popularList.add(MovieModel.fromJson(value));
        debugPrint("=========>>>>>${value['result']}");
      }).toList();
      isLoading(false);
    }).then((ErrorModel? errorModel) {
      isLoading(false);
      debugPrint(errorModel.toString());
    });
    return popularList;
  }

  // var popularMovieLists = <MoviesModel>[];
  // Stream<List<MoviesModel>> readMovie() => FirebaseFirestore.instance
  //     .collection('movie')
  //     .snapshots()
  //     .map((event) => event.docs.map((e) {
  //           return MoviesModel.fromJson(e.data());
  //         }).toList());
  Future addMovieDetail() async {
    final docMovie = FirebaseFirestore.instance.collection('movie').doc('2');
    final json = {
      'categories': ["", ""],
      'enurl_srt': "no",
      'image_url':
          "https://m.media-amazon.com/images/M/MV5BNWM0ZGJlMzMtZmYwMi00NzI3LTgzMzMtNjMzNjliNDRmZmFlXkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_.jpg",
      'khurl_srt': "no",
      'm3u8url_server1':
          "https://e-6.mzzcloud.life/_v8/3582b4da9312f4e71eda6f68b63b7b9d9076fa33db4aee2a4d17ce910d62725772a5943a21406df8d119618f15b326cc9e2c8ef2e043f52cef8338902d71d82b06afac638f66d5e277fe04931afd9c93aee6c03ea9a72eaf889e6d0c9c5db034d68ba9fc995313f42ff0973d0f9795029e0cbc039c88fc29478f77a005de3174/720/index.m3u8",
      'm3u8url_server2':
          "https://e-5.mzzcloud.life/_v8/9464cde7ca464582ab025882cf15066ecbc18db0d5224028c548fa747319ab4d62652388c99308aea4fa4cf6f9862303a9d96a1164e251b224c193a912bdb21a4be9a9b7c89bdde94523e061637d5fd4976492f81bf5636946dc74c3c74214ac4c13bf40205ce12f1c85e6729cd8cc39c6c5c3c4cd4fa5ec002e70f9bddf66d2/1080/index.m3u8",
      'm3u8url_server3':
          "https://b-g-eu-2.feetcdn.com:2223/v2-hls-playback/9464cde7ca464582ab025882cf15066ecbc18db0d5224028c548fa747319ab4d62652388c99308aea4fa4cf6f9862303014be5a6d9c7a22dc49cf21709d1597c8849ae48bf0fd505caca078d0a51adedb555d727c92e8f327058fe47996b7a20a985ccdbb86d51c48f02cb73f1b743d001a0eb50e1245b738ed37d3a2c807e6afbc204a71a0bf59ae7603984fae186eab8a9724af0ff555a62c1470fecb1f0aee154dcf07bbefc51712337c2921c8289/1080/index.m3u8",
      'movieName': "Doctor Strange in the Multiverse of Madness",
      'overview':
          "When Doctor Strange meets America Chavez, a girl who is being hunted for her unique ability to travel through the multiverse, he steps in to help America survive.",
      'quality': "HD",
      'rate': "7.3",
      'release_date': "2022-05-04",
      'thumbnail_url':
          "https://cdn.mos.cms.futurecdn.net/NJXQ8h3mUd9mhsh2m8xpba.jpg",
    };
    await docMovie.set(json).then((value) {
      debugPrint('Added Success');
    }).onError((error, stackTrace) {
      debugPrint('error:$error');
    });
  }
}
