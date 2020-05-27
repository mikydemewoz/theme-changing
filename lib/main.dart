import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_changing/home_page.dart';

import 'global/theme/bloc/theme_bloc_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ThemeBlocBloc(),
      child: BlocBuilder<ThemeBlocBloc,ThemeBlocState>(
        builder: _buildWithTheme,
      ),
    );
  }

  Widget _buildWithTheme(BuildContext context,ThemeBlocState state) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
      theme: state.themeData,
    );
  }
}
