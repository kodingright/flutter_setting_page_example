import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lesson1/models/models.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeValue>(
      builder: (context, themevalue, child) {
        return MaterialApp(
          title: 'Setting screen',
          theme: themevalue.currentTheme,
          home: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Text('Settings'),
            ),
            body: ListView(
              padding: EdgeInsets.fromLTRB(10, 40, 10, 40),
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                Card(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: SwitchListTile.adaptive(
                      secondary: Icon(
                        FontAwesomeIcons.accusoft,
                      ),
                      title: Text(
                        'Dark/Light Theme',
                      ),
                      contentPadding: EdgeInsets.all(0),
                      value: themevalue.isLight,
                      onChanged: (value) {
                        themevalue.setIsLight(value);
                        themevalue.setThemeData(themevalue.isLight);
                        // print('${themevalue.isLight}');
                      },
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Consumer<FontSize>(
                  builder: (context, fonts, child) {
                    return Card(
                      child: Slider(
                        value: fonts.size,
                        min: 10,
                        max: 30,
                        divisions: 5,
                        label: '${fonts.size}',
                        onChanged: (value) {
                          fonts.setSize(value);
                          print("${fonts.size}");
                        },
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
