part of 'theme_bloc_bloc.dart';

@immutable
abstract class ThemeBlocEvent extends Equatable {
  ThemeBlocEvent();


}

class ThemeChanged extends ThemeBlocEvent{

  final AppTheme theme;

  ThemeChanged({ @required this.theme});

  @override
  List<Object> get props => [
    theme
  ];

}