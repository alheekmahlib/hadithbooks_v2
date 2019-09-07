import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hadithbooks_v2/bookspage/bokhare_page.dart';
import 'package:hadithbooks_v2/second_page.dart';
import 'package:hadithbooks_v2/ui/settings.dart';
import 'package:hadithbooks_v2/splash/splash_page.dart';
import 'bloc/change_theme_bloc.dart';
import 'bloc/change_theme_state.dart';
import 'data/data.dart';
import 'ui/detail.dart';
import 'ui/books_page.dart';
import 'ui/fancy_bottom_navigation.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'كتب الحديث',
      home: SplashPage(),
      onGenerateRoute: (settings) => generateRoute(settings),

//      localizationsDelegates: [
//        GlobalMaterialLocalizations.delegate,
//        GlobalWidgetsLocalizations.delegate,
//      ],
//      supportedLocales: [
//        Locale("en", "US"),
//        Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
//      ],
    );
  }

  generateRoute(RouteSettings settings) {
    final path = settings.name.split('/');
    final title = path[1];

    Book book = books.firstWhere((it) => it.title == title);
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => Detail(book),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 1;

  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: changeThemeBloc,
        builder: (BuildContext context, ChangeThemeState state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: state.themeData.backgroundColor,
              elevation: 0,
            ),
            drawer: Drawer(
              child: SettingsPage(),
            ),

//            resizeToAvoidBottomPadding: false,

//            appBar: AppBar(
//              backgroundColor: state.themeData.canvasColor,
//              title: Text(
//                "كتب الحديث",
//                style: TextStyle(
//                    fontWeight: FontWeight.bold, color: Colors.yellow[50]),
//              ),
//            ),
            backgroundColor: state.themeData.backgroundColor,
            body: _getPage(currentPage),
//            Container(
//              decoration: BoxDecoration(color: Colors.yellow[50]),
//              child: Center(
//
//                child: Column(
//                  children: <Widget>[
////                  SlideOutMenu(),
//                  GetPage(),
//                  ],
//
//                ),
//              )
//            ),
            bottomNavigationBar: FancyBottomNavigation(
              tabs: [
                TabData(
                  iconData: Icons.bookmark,
                  title: "الفواصل",

//              onclick: () => Navigator.of(context)
//          .push(MaterialPageRoute(builder: (context) => BokharePage()))
                ),
                TabData(
                  iconData: Icons.search,
                  title: "البحث",
//              onclick: () {
//                final FancyBottomNavigationState fState =
//                    bottomNavigationKey.currentState;
//                fState.setPage(2);}
                ),
                TabData(iconData: Icons.book, title: "الكتب")
              ],
              initialSelection: 1,
              key: bottomNavigationKey,
              onTabChangedListener: (position) {
                setState(() {
                  currentPage = position;
                });
              },
            ),
          );
        });
  }

  _getPage(int page) {
    switch (page) {
      case 0:
//        هنا الفواصل
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("This is the home page"),
            RaisedButton(
              child: Text(
                "Start new page",
                style: TextStyle(color: Colors.white),
              ),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SecondPage()));
              },
            ),
            RaisedButton(
              child: Text(
                "Change to page 3",
                style: TextStyle(color: Colors.white),
              ),
              color: Theme.of(context).accentColor,
              onPressed: () {
                final FancyBottomNavigationState fState =
                    bottomNavigationKey.currentState;
                fState.setPage(2);
              },
            )
          ],
        );

      case 1:
//        هنا خانة البحث
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("This is the search page"),
            RaisedButton(
              child: Text(
                "Start new page",
                style: TextStyle(color: Colors.white),
              ),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SecondPage()));
              },
            )
          ],
        );
      default:
//        هنا تعرض الكتب
        return BooksPage();
    }
  }

  generateRoute(RouteSettings settings) {
    final path = settings.name.split('/');
    final title = path[1];

    Book book = books.firstWhere((it) => it.title == title);
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => Detail(book),
    );
  }

  void onClickBtn() {
    Navigator.of(context).pushNamed('/BokharePage');
  }
}
