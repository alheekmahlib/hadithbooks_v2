import 'package:flutter/material.dart';
import 'package:hadithbooks_v2/bloc/change_theme_bloc.dart';
import 'package:hadithbooks_v2/bloc/change_theme_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int option;
  final List<Color> colors = [Colors.white, Color(0xff242248), Colors.black];
  final List<Image> images = [Image.asset('img/paint_brush.png'), Image.asset('img/paint_brushb.png')];
  final List<String> themes = ['Amoled', 'Dark'];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: changeThemeBloc,
      builder: (BuildContext context, ChangeThemeState state) {
        return Theme(
            data: state.themeData,
            child: Container(
              color: state.themeData.backgroundColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[



                          ],
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Theme',
                          style: state.themeData.textTheme.body2,
                        ),
                      ],
                    ),
                    subtitle: SizedBox(
                      height: 100,
                      child: Center(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 2,
                          itemBuilder: (BuildContext context, int index) {
                            return Stack(
                              children: <Widget>[
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        child: images[index],
                                      ),
                                    ),
                                    Text(themes[index],
                                        style: state.themeData.textTheme.body2)
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            switch (index) {
                                              case 0:
                                                changeThemeBloc
                                                    .onAmoledThemeChange();
                                                break;
                                              case 1:
                                                changeThemeBloc
                                                    .onDarkThemeChange();
                                                break;
                                            }
                                          });
                                        },
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          child: state.themeData.primaryColor ==
                                                  colors[index]
                                              ? Icon(Icons.done,
                                                  color: state
                                                      .themeData.canvasColor)
                                              : Container(),
                                        ),
                                      ),
                                    ),
                                    Text(themes[index],
                                        style: state.themeData.textTheme.body2)
                                  ],
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ));
      },
    );
  }
}
