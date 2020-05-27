part of 'theme_bloc_bloc.dart';

class ThemeBlocState extends Equatable {

  final ThemeData themeData;

  ThemeBlocState({
    @required this.themeData
  });

  @override
  List<Object> get props => [
    themeData,
  ];
}


