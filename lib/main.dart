import 'package:flutter/material.dart';
import 'package:lesson1/models/models.dart';
import 'package:lesson1/util/const.dart';
import 'package:provider/provider.dart';
import 'screens/setting.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<ThemeValue>(
            create: (context) => ThemeValue(),
          ),
          ChangeNotifierProvider<FontSize>(
            create: (context) => FontSize(),
          ),
        ],
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeValue>(
      builder: (context, themevalue, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'My first app.',
          theme: themevalue.currentTheme,
          home: Home(),
          routes: {
            '/setting': (_) => SettingPage(),
            '/login': (_) {
              print('hello login');
            },
          },
        );
      },
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _selected(MenuList menulst) {
    switch (menulst.title) {
      case 'Setting':
        Navigator.of(context).pushNamed('/setting');
        break;
      case 'Login':
        Navigator.of(context).pushNamed('/login');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Layouts',
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          PopupMenuButton<MenuList>(
            onSelected: _selected,
            itemBuilder: (BuildContext context) {
              return menulist.map((MenuList menulst) {
                return PopupMenuItem<MenuList>(
                  value: menulst,
                  child: Row(
                    children: <Widget>[
                      Icon(menulst.icon),
                      SizedBox(
                        width: 6,
                      ),
                      Text(menulst.title),
                    ],
                  ),
                );
              }).toList();
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                'img/flutter-img.jpg',
                fit: BoxFit.fitWidth,
              ),
              Divider(),
              Container(
                padding: EdgeInsets.all(8),
                child: Text(
                  'Flutter Introduction',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Consumer<FontSize>(
                builder: (context, fontsize, child) {
                  return Expanded(
                    child: Scrollbar(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            Constants.largeText,
                            style: TextStyle(
                              fontSize: fontsize.size,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuList {
  final String title;
  final IconData icon;

  MenuList({this.title, this.icon});
}

List<MenuList> menulist = [
  MenuList(title: 'Setting', icon: Icons.settings),
  MenuList(title: 'Login', icon: Icons.home),
];
