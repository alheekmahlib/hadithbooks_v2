import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hadithbooks_v2/bloc/change_theme_bloc.dart';
import 'package:hadithbooks_v2/bloc/change_theme_state.dart';
import 'package:hadithbooks_v2/ui/settings.dart';

import '../data/data.dart';

class BooksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: changeThemeBloc,
        builder: (BuildContext context, ChangeThemeState state) {


    ///create book tile hero
    createTile(Book book) => Hero(
          tag: book.title,
          child: Material(
            elevation: 5.0,
            shadowColor: state.themeData.canvasColor,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'detail/${book.title}');
              },
              child: Image(
                image: AssetImage(book.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );

    ///create book grid tiles
    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.only(top: 128.0,left: 16.0,right: 16.0,bottom: 16.0),
          sliver: SliverGrid.count(
            childAspectRatio: 2 / 3,
            crossAxisCount: 2,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            children: books.map((book) => createTile(book)).toList(),
          ),
        )
      ],
    );

    return Scaffold(

      backgroundColor: state.themeData.backgroundColor,

      body: grid,
    );
        }
        );
  }
}
