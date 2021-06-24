import 'package:flutter/painting.dart';
import 'package:surf_places/ui/const/colors.dart';

/// Текстовые стили
TextStyle textAppBar = const TextStyle(
  color: fontMain,
  fontSize: 32,
  height: 36 / 32,
  fontWeight: FontWeight.w700,
);

TextStyle _text = const TextStyle(
  fontStyle: FontStyle.normal,
  fontFamily: 'Roboto',
  color: textMain,
),

//Light
    textLight = _text.copyWith(fontWeight: FontWeight.w300),

//Regular
    textRegular = _text.copyWith(fontWeight: FontWeight.normal),
    textRegular14 = textRegular.copyWith(fontSize: 14.0),
    textRegular16 = textRegular.copyWith(fontSize: 16.0),
    textRegular24 = textRegular.copyWith(fontSize: 24.0),
    textRegular16Secondary = textRegular16.copyWith(color: textColorSecondary, height: 20 / 16),
    textRegular24Secondary = textRegular16.copyWith(color: textColorSecondary, height: 28.8 / 24),
    textRegular14Secondary = textRegular14.copyWith(color: textColorSecondary, height: 18 / 14),
    textRegular14SecondaryInactive = textRegular14Secondary.copyWith(color: textColorSecondary.withOpacity(0.56)),
    textRegular14Secondary2 = textRegular14.copyWith(color: textColorSecondary2, height: 18 / 14),

//Medium
    textMedium = _text.copyWith(fontWeight: FontWeight.w500),
    textMedium16 = textMedium.copyWith(fontSize: 16.0),
    textMedium16Secondary = textMedium16.copyWith(color: textColorSecondary),

//Bold
    textBold = _text.copyWith(fontWeight: FontWeight.bold),
    textBold14 = textBold.copyWith(fontSize: 14.0),
    textBold24 = textBold.copyWith(fontSize: 24.0),
    textBold14White = textBold14.copyWith(color: textWhite),
    textBold14WhiteSpacing = textBold14White.copyWith(letterSpacing: 0.3),
    textBold24Secondary = textBold.copyWith(fontSize: 24.0, color: textColorSecondary);
