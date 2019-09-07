import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/change_theme_bloc.dart';
import '../bloc/change_theme_state.dart';
import '../data/data.dart';
import 'package:flutter/material.dart';
import '../bookspage/bokhare_page.dart';

class Detail extends StatelessWidget {
  final Book book;

  Detail(this.book);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: changeThemeBloc,
        builder: (BuildContext context, ChangeThemeState state)
    {

      //app bar
      final appBar = AppBar(
        backgroundColor: state.themeData.canvasColor,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      );



      ///detail of book image and it's pages
      final topLeft = Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(
                16.0),
            child: Hero(
              tag: book.title,
              child: Material(
                elevation: 15.0,
                shadowColor: state.themeData.primaryColor,
                child: Image(
                  image: AssetImage(book.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          text('صفحة ${book.pages}', color: state.themeData.primaryColor, size: 12)
        ],
      );

      ///detail top right
      final topRight = Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(
                  bottom: 16.0)),

          Container(
            margin: EdgeInsets.only(right: 0.0),
            child:
            Text(book.title,
              style: TextStyle(
                color: state.themeData.primaryColor,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              textDirection: TextDirection.rtl,
            ),

          ),

          Container(
            margin: EdgeInsets.only(right: 16.0,top: 8.0),
            child:
            Text('المؤلف: ${book.writer}',
              style: TextStyle(
                color: state.themeData.primaryColor,
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
              textDirection: TextDirection.rtl,
            ),

          ),

//          Row(
//            children: <Widget>[
//              text(
//                book.price,
//                isBold: true,
//                padding: EdgeInsets.only(right: 8.0),
//              ),
//              RatingBar(rating: book.rating)
//            ],
//          ),
          SizedBox(height: 32.0),
          Container(
            margin: EdgeInsets.only(right: 0.0),
            child: Material(
              borderRadius: BorderRadius.circular(20.0),
              shadowColor: state.themeData.primaryColor,
              elevation: 5.0,
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BokharePage()));
                }
                ,
                minWidth: 140.0,
                color: state.themeData.buttonColor,
                child: text('قراءة', color: state.themeData.primaryColor, size: 18),
              ),
            ),
          ),

        ],
      );

      final topContent = Container(
        color: state.themeData.canvasColor,
        padding: EdgeInsets.only(bottom: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(flex: 2, child: topLeft),
            Flexible(flex: 3, child: topRight),
          ],
        ),
      );

      ///scrolling text description
      final bottomContent = Container(
//        height: 420.0,
        child: Container(
          padding: EdgeInsets.all(24.0),
          child: Text(
            book.description,
            style: TextStyle(fontSize: 17.0, height: 1.5),
            textDirection: TextDirection.rtl,
          ),
        ),
      );


      return Scaffold(
      appBar: appBar,
        body: ListView(
          children: <Widget>[topContent, bottomContent],
        ),
      );
    });
  }

  ///create text widget
  text(String data,
          {Color color = Colors.black87,
          num size = 14,
          EdgeInsetsGeometry padding = EdgeInsets.zero,
          bool isBold = false}) =>
      Padding(
        padding: padding,
        child: Text(
          data,
          style: TextStyle(
              color: color,
              fontSize: size.toDouble(),
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
      );

}
