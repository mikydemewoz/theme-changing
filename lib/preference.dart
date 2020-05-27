import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_changing/global/theme/app_themes.dart';
import 'package:theme_changing/global/theme/bloc/theme_bloc_bloc.dart';

class PreferencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferences'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: AppTheme.values.length,
        itemBuilder: (BuildContext context, int index) {
          final itemAppTheme = AppTheme.values[index];

          return Card(
            color: appThemeData[itemAppTheme].primaryColor,
            child: ListTile(
              title: Text(
                itemAppTheme.toString(),
                style: appThemeData[itemAppTheme].textTheme.bodyText1,
              ),
              onTap: (){
                BlocProvider.of<ThemeBlocBloc>(context).add(ThemeChanged(theme: itemAppTheme));
              },
            ),
          );
        },
      ),
    );
  }
}
