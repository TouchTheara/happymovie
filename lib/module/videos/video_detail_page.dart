import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import 'package:jiffy/jiffy.dart';

import '../../route/app_route.gr.dart';
import '../../widgets/custom_shimmer_box/custom_shimmer_box.dart';
import '../home_screen/controller/home_screen_controller.dart';
import '../home_screen/home_screen.dart';
import '../home_screen/model/movie_model/movie_model.dart';

class VideoDetail extends StatelessWidget {
  const VideoDetail({Key? key, this.moviesModel}) : super(key: key);
  final MovieModel? moviesModel;

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeScreenController());
    var a = 0;

    return Scaffold(
      backgroundColor: const Color(0xFF141414),
      body: SingleChildScrollView(
        child: SizedBox(
          height: a == 1 ? 900 : 900,
          width: double.infinity,
          child: Stack(
            children: [
              //backgroundImage
              customBackImg(moviesModel!.imageUrl!),
              Positioned(
                left: 20,
                top: 80,
                child: customMovieBannerV2(
                  urlAsset: moviesModel!.imageUrl!,
                  movieDate: moviesModel!.releaseDate,
                  movieRate: moviesModel!.rate,
                  movieTitle: moviesModel!.movieTitle,
                ),
              ),
              //CategoryCardLabel
              Positioned(
                left: 200,
                top: 325,
                child: Row(
                    children: []
                        .map((e) => customCategoryLabels(categoryName: e))
                        .toList()),
              ),
              //Overview
              Positioned(
                right: 20,
                top: 400,
                left: 20,
                child: Column(
                  children: [
                    Text(moviesModel!.overview ?? "",
                        style: const TextStyle(
                          fontSize: 11,
                          color: Color(0xFFC4C4C4),
                        )),
                    //Recomended label

                    Padding(
                      padding: const EdgeInsets.only(
                        top: 30,
                      ),
                      child: SizedBox(
                        height: 30,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Recomended',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              'See More',
                              style: TextStyle(
                                  color: Color(0xFFC6C6C6),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20, bottom: 0, left: 0, right: 0),
                      child: SizedBox(
                        height: 280,
                        child: ListView(
                          // physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: []
                              .map((e) => CustomMovieCard(
                                    imgUrl: e.imageUrl,
                                    rate: e.rate,
                                    title: e.movieName,
                                  ))
                              .toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //season detail section
              if (a == 1)
                Positioned(
                  right: 30,
                  top: 435,
                  left: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Season',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      DropdownButton<String>(
                        value: '1',
                        icon: const Icon(
                          Icons.arrow_downward,
                          color: Color(0xFFDAA520),
                        ),
                        elevation: 16,
                        focusColor: Colors.black,
                        style: const TextStyle(color: Colors.white),
                        dropdownColor: const Color(0xFF2E2E2E),
                        underline: Container(
                          height: 2,
                          color: const Color(0xFFDAA520),
                        ),
                        onChanged: (String? newValue) {
                          // setState(() {
                          //   dropdownValue = newValue!;
                          // });
                        },
                        items: <String>['1', '2', '3']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            alignment: AlignmentDirectional.center,
                            child: Text(value),
                          );
                        }).toList(),
                      )
                    ],
                  ),
                ),
              //episode detail section
              if (a == 1)
                Positioned(
                  right: 0,
                  top: 490,
                  left: 15,
                  child: SizedBox(
                    height: 45,
                    child: ListView(
                      // physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: []
                          .map((e) => customCategoryCard(
                              isUnHideImage: false,
                              height: 30,
                              color: e.color,
                              onTap: () {},
                              text: e.title,
                              textStyle: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)))
                          .toList(),
                    ),
                  ),
                ),

              // Positioned(
              //   right: 0,
              //   top: a == 1 ? 570 : 450,
              //   left: 5,
              //   child: Padding(
              //     padding: const EdgeInsets.only(
              //         top: 13, bottom: 0, left: 15, right: 0),
              //     child: SizedBox(
              //       height: 200,
              //       child: ListView(
              //         // physics: const NeverScrollableScrollPhysics(),
              //         scrollDirection: Axis.horizontal,
              //         children: _homeController.popularMovieHomeList
              //             .map((e) => CustomMovieCard(
              //                   imgUrl: e.imageUrl,
              //                   rate: e.rate,
              //                   title: e.movieName,
              //                 ))
              //             .toList(),
              //       ),
              //     ),
              //   ),
              // ),
              //play btn
              Positioned(
                right: 80,
                top: 160,
                child: GestureDetector(
                    onTap: () {
                      // AutoRouter.of(context).popAndPush(
                      //   VideoDetailRouter(children: [
                      //     VideoPlayerRoute(moviesModel: moviesModel!)
                      //   ]),
                      // );VideoPlayerRoute
                      // AutoRouter.of(context)
                      //     .popAndPush(ButtomNavigationBarRouter(children: [
                      //   HomeRoute(children: [
                      //     VideoDetailRouter(moviesModel: moviesModel!)
                      //   ])
                      // ]));
                      AutoRouter.of(context)
                          .push(VideoPlayerRouter(moviesModel: moviesModel!));
                    },
                    child: Image.asset(
                      'asset/play-icon.jpg',
                      height: 100,
                      width: 100,
                    )),
              ),

              //appbar
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, top: 30, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customButtonIcon(context, icon: Icons.navigate_before,
                            onTap: () {
                          context.router.pop(const HomeRoute());
                        }),

                        // customButtonIcon(context),
                        customButtonIcon(context,
                            icon: Icons.favorite_border, onTap: () {}),
                      ],
                    ),
                  ),

                  /*SingleChildScrollView(
                    child: Container(
                      color: const Color(0xff10121C),
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 350,
                            child: Stack(
                              children: [
                                //background image poster
                                Container(
                                  height: 250,
                                  width: double.infinity,
                                  color: Colors.greenAccent,
                                  child: Image.network(
                                    'https://cdn.mos.cms.futurecdn.net/NJXQ8h3mUd9mhsh2m8xpba.jpg',
                                    fit: BoxFit.fill,
                                    color: Colors.white.withOpacity(0.8),
                                    colorBlendMode: BlendMode.color,
                                  ),
                                ),
                                //image poster movie
                                Positioned(
                                  left: 20,
                                  bottom: 5,
                                  child: customMovieBannerV2(
                                      urlAsset:
                                          'https://pics.filmaffinity.com/Doctor_Strange_in_the_Multiverse_of_Madness-812289638-large.jpg'),
                                ),
                                //play button
                                Positioned(
                                  right: 40,
                                  bottom: 60,
                                  child: GestureDetector(
                                    onTap: () {
                                      debugPrint('Btn play');
      
                                      // Get.to(VideoPlayerPage(
                                      //   movieBannerModel: widget.movieBannerModel,
                                      // ));
                                      // VideoViewer(
                                      //   controller: controllerVideoViewer,
                                      //   source: {
                                      //     "SubRip Text": VideoSource(
                                      //       video: VideoPlayerController.network(
                                      //           "https://www.speechpad.com/proxy/get/marketing/samples/standard-captions-example.mp4"),
                                      //       subtitle: {
                                      //         "English": VideoViewerSubtitle.network(
                                      //           "https://felipemurguia.com/assets/txt/WEBVTT_English.txt",
                                      //           type: SubtitleType.webvtt,
                                      //         ),
                                      //       },
                                      //     )
                                      //   },
                                      // );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(60)),
                                      child: const Icon(
                                        Icons.play_circle_rounded,
                                        color: Colors.red,
                                        size: 80,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //movie title
                          const Padding(
                            padding: EdgeInsets.only(left: 20, top: 5),
                            child: Text(
                              'The Tommorrow War',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 5),
                            child: SizedBox(
                              width: 160,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Action/Scri-fi',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    '2.5.hrs',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 5),
                            child: SizedBox(
                              width: 160,
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 14,
                                  ),
                                  Text(
                                    '6.7',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20, top: 15),
                            child: SizedBox(
                              width: 160,
                              child: Text(
                                'Overview',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20, top: 8, right: 20),
                            child: Flexible(
                              child: Text(
                                'A family man is drafted to fight in a future war where the fate of humanity relies on his ability to confront the past. The world is stunned when a group of time travelers arrives from the year 2051 to deliver an urgent message: 30 years in the future, mankind is losing a global war against a deadly alien species.',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20, top: 15, right: 20),
                            child: Text(
                              'Recomended',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 13, bottom: 100),
                            child: SizedBox(
                              height: 200,
                              child: ListView(
                                // physics: const NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: _homeController.languageMovieHomeList
                                    .map((e) => CustomMovieCard(
                                          imgUrl: e.imgUrl,
                                          rate: e.rate,
                                          title: e.title,
                                        ))
                                    .toList(),
                              ),
                            ),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.only(right: 20),
                          //   child: SizedBox(
                          //     height: 250,
                          //     child: ListView(
                          //         scrollDirection: Axis.horizontal,
                          //         children: controllerHomePage.moviebannerList
                          //             .map((e) => Padding(
                          //                   padding: const EdgeInsets.only(
                          //                       left: 20, bottom: 30, top: 10, right: 0),
                          //                   child:
                          //                       customMovieBannerV2(urlAsset: e.imageUrl),
                          //                 ))
                          //             .toList()),
                          //   ),
                          // )
                        ],
                      ),
                    ),
                  ),
                  // Positioned(
                  //   left: 10,
                  //   top: 60,
                  //   child: GestureDetector(
                  //     onTap: () {
                  //       debugPrint('Btn back');
                  //       Navigator.pop(context);
                  //     },
                  //     child: const Icon(
                  //       Icons.navigate_before,
                  //       color: Colors.white,
                  //       size: 35,
                  //     ),
                  //   ),
                  // ),*/
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customCategoryLabels({String? categoryName}) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 3, top: 3),
        height: 25,
        decoration: BoxDecoration(
          // color: Colors.yellow,
          border: Border.all(
            color: Colors.white,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            categoryName ?? '',
            style: const TextStyle(
                fontSize: 10, color: Colors.white, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  customCategoryCardLabel() {
    return Row(
      children: [
        Container(
          padding:
              const EdgeInsets.only(left: 10, right: 10, bottom: 3, top: 3),
          height: 25,
          decoration: BoxDecoration(
            // color: Colors.yellow,
            border: Border.all(
              color: Colors.white,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Center(
            child: Text(
              'Action',
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          padding:
              const EdgeInsets.only(left: 10, right: 10, bottom: 3, top: 3),
          height: 25,
          decoration: BoxDecoration(
            // color: Colors.yellow,
            border: Border.all(
              color: Colors.white,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Center(
            child: Text(
              'Adventure',
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }

  customBackImg(String imageUrl) {
    return Stack(
      children: [
        SizedBox(
          height: 500,
          width: double.infinity,
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.cover,
            color: Colors.grey.withOpacity(0.6),
            colorBlendMode: BlendMode.color,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                ShimmerBox(
              height: 200,
              width: double.infinity,
              isColor: true,
              color: Colors.red[100],
              baseColor: Colors.grey[400],
              highlightColor: Colors.black,
              radius: 10,
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        Container(
          height: 500,
          decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.1),
                    const Color(0xFF141414),
                  ],
                  stops: const [
                    0.4,
                    0.8
                  ])),
        ),
      ],
    );
  }

  GestureDetector customButtonIcon(
    BuildContext context, {
    IconData? icon,
    Function()? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color(0xFF141414),
          border: Border.all(
            color: Colors.white,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          icon,
          // Icons.favorite_border,

          color: const Color(0xFFDAA520),
          size: 20,
        ),
      ),
    );
  }
}

// Container customMovieBanner({String? urlAsset}) {
//   return Container(
//     height: 250,
//     width: 160,
//     decoration: BoxDecoration(
//       color: Colors.blue,
//       borderRadius: BorderRadius.circular(15),
//     ),
//     child: Image.network('$urlAsset', fit: BoxFit.fill),
//   );
// }

customMovieBannerV2(
    {String? urlAsset,
    String? movieTitle,
    String? movieDate,
    double? movieRate}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: SizedBox(
      // color: Colors.red,
      height: 300,
      width: 140,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(
            imageUrl: '$urlAsset',
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                ShimmerBox(
              height: 210,
              width: 140,
              isColor: true,
              color: Colors.red[100],
              baseColor: Colors.grey[400],
              highlightColor: Colors.white,
              radius: 10,
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            fit: BoxFit.cover,
            height: 210,
            width: 140,
          ),
          const SizedBox(
            height: 5,
          ),
          AutoSizeText(
            movieTitle!,
            style: const TextStyle(color: Colors.white),
            maxFontSize: 14,
            minFontSize: 10,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Jiffy(movieDate!).format("DD/MM/yyyy"),
                style: const TextStyle(color: Color(0xFF9B9B9B), fontSize: 12),
              ),
              const Text(
                '2.5 hrs',
                style: TextStyle(color: Color(0xFF9B9B9B), fontSize: 12),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RatingBar.builder(
                ignoreGestures: true,
                itemSize: 16,
                initialRating: movieRate! / 2.3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.only(),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 2,
                ),
                maxRating: 10,
                unratedColor: const Color(0xFF555555),
                onRatingUpdate: (rating) {},
              ),
              Text(
                "$movieRate",
                style: const TextStyle(
                    color: Colors.amber,
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ],
      ),
    ),
  );
}
