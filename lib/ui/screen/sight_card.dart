//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surf_places/domain/sight.dart';
import 'package:surf_places/ui/const/text_styles.dart';
import 'package:surf_places/ui/const/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:surf_places/ui/const/icons.dart';

/// Карточка места.
class SightCard extends StatelessWidget {
  final Sight sight;

  SightCard(this.sight);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: Container(
        padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            color: cardBackground,
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    _SightPhoto(sight.url),
                    Positioned(
                      left: 16,
                      top: 16,
                      child: _SightType(sight.type.toLowerCase()),
                    ),
                    Positioned(
                      right: 18,
                      top: 19,
                      child: _ButtonHeart(),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 16),
                      _SightName(sight.name),
                      SizedBox(height: 2),
                      _SightDetails(sight.details),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Фотография места
class _SightPhoto extends StatelessWidget {
  final String url;

  _SightPhoto(this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 96,
      child: Image.network(
        url,
        fit: BoxFit.cover,
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent loadingProgress) {
          if (loadingProgress == null) return child;

          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes
                  : null,
            ),
          );
        },
      ),
    );
  }
}

/// Тип достопримечательности
class _SightType extends StatelessWidget {
  final String type;

  _SightType(this.type);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Text(
        type.toLowerCase(),
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: textBold14White,
      ),
    );
  }
}

/// Название места в карточке
class _SightName extends StatelessWidget {
  final String name;

  _SightName(this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //height: 40,
      child: Text(name,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: textMedium16Secondary),
    );
  }
}

/// Описание места в карточке
class _SightDetails extends StatelessWidget {
  final String details;

  _SightDetails(this.details);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(details,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: textRegular14Secondary2),
    );
  }
}

/// Кнопка "Сердце"
class _ButtonHeart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 18,
      child: SvgPicture.asset(AppIcons.heartIcon),
    );
  }
}
