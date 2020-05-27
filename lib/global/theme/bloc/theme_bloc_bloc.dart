import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:theme_changing/global/theme/app_themes.dart';
import 'package:meta/meta.dart';

part 'theme_bloc_event.dart';
part 'theme_bloc_state.dart';

class ThemeBlocBloc extends Bloc<ThemeBlocEvent, ThemeBlocState> {
  @override
  ThemeBlocState get initialState => ThemeBlocState(themeData: appThemeData[AppTheme.GreenLight]);

  @override
  Stream<ThemeBlocState> mapEventToState(
    ThemeBlocEvent event,
  ) async* {
    if(event is ThemeChanged){
      yield ThemeBlocState(themeData: appThemeData[event.theme]);
    }
  }
}
