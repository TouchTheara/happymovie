import 'package:auto_route/auto_route.dart';

import '../module/bottom_navigation_bar.dart/bottom_navigation_bar.dart';
import '../module/favorite_page/favorite_page.dart';
import '../module/home_screen/home_screen.dart';
import '../module/login/login_page.dart';
import '../module/movies_page/movie_rank_page.dart';
import '../module/movies_page/movies_page.dart';
import '../module/profile/profile.dart';
import '../module/splash_screen/splash_screen.dart';

import '../module/tv_show/tv_show_page.dart';

import '../module/video_play/video_player.dart';
import '../module/video_play_list/video_detail_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/sso', page: SplashScreen, initial: true),
    AutoRoute(
      path: '/dashboard',
      page: ButtomNavigationBar,
      name: 'ButtomNavigationBarRouter',
      children: [
        AutoRoute(
            path: 'home',
            page: EmptyRouterPage,
            initial: true,
            name: 'HomeRoute',
            children: [
              AutoRoute(
                path: '',
                page: HomeScreen,
              ),
              AutoRoute(
                path: 'detail',
                page: VideoDetail,
                name: 'VideoDetailRoute',
              ),
              AutoRoute(
                path: 'movies',
                page: MoviesPage,
                name: 'MoviesPageRoute',
              ),
            ]),
        // AutoRoute(
        //     path: 'home',
        //     page: EmptyRouterScreen,
        //     initial: true,
        //     name: 'HomeRoute',
        //     children: [
        //       AutoRoute(
        //         path: '',
        //         page: HomeScreen,
        //       ),
        //       AutoRoute(
        //           path: 'detail',
        //           page: EmptyRouterScreen,
        //           name: 'VideoDetailRouter',
        //           children: [
        //             AutoRoute(
        //               path: '',
        //               page: VideoDetail,
        //               name: 'VideoDetailRoute',

        //             ),
        //             AutoRoute(
        //                 path: 'video-player',
        //                 page: VideoPlayer,
        //                 name: 'VideoPlayerRoute'),
        //           ]),
        //     ]),
        AutoRoute(
          path: 'movies',
          page: EmptyRouterScreen,
          name: 'MoviesRoute',
          children: [
            AutoRoute(
              path: '',
              page: MoviesRankPage,
            ),
            AutoRoute(
              path: 'detail',
              page: VideoDetail,
              name: 'VideoDetailRoute',
            ),
          ],
        ),
        AutoRoute(path: 'tvshow', page: TVShowPage, name: 'TVShowRoute'),
        AutoRoute(path: 'favorite', page: FavoritePage, name: 'FavoriteRoute'),
        AutoRoute(path: 'profile', page: ProfilePage, name: 'ProfileRoute'),
      ],
    ),
    RedirectRoute(path: '', redirectTo: '/sso'),
    AutoRoute(path: '/login', page: LoginPage),
    AutoRoute(
        path: 'video-player', page: VideoPlayer, name: 'VideoPlayerRouter'),
  ],
)
class $AppRouter {}
