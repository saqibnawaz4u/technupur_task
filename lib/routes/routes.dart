import 'package:flutter/material.dart';

import 'package:technupur_task/routes/routes_names.dart';

import '../ui/home_screen/home_screen.dart';
import '../ui/splash_screen/splash_screen.dart';

class AppRoutes {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashscreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );

      /// Main Screen
      case RoutesName.homepage:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      // case RoutesName.categoryScreen:
      // final List<CategoryModel> categoryList = settings.arguments as List<CategoryModel>;
      //   return MaterialPageRoute(
      //     builder: (_) => MahendiDesignCategoryScreen(categoryList: categoryList,),
      //   );

      /// Passing arguments as param
      //   case EditNoteScreen.routeName:
      //     final NotesModel notesModel = settings.arguments as NotesModel;
      //
      //     return MaterialPageRoute(builder: (_) => EditNoteScreen(notesModel: notesModel));
//     final NotesModel notesModel = settings.arguments as NotesModel;
      default:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
    }
  }
}
