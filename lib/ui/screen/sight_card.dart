import 'package:flutter/material.dart';
import 'package:surf_places/domain/sight.dart';
import 'package:surf_places/ui/const/text_styles.dart';
import 'package:surf_places/ui/const/colors.dart';

/// Карточка места.
class SightCard extends StatelessWidget {
  final Sight sight;

  SightCard(this.sight);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                _SightPhoto(),
                Positioned(
                  left: 16,
                  top: 16,
                  child: _SightType(this.sight.type.toLowerCase()),
                ),
                Positioned(
                  right: 18,
                  top: 19,
                  child: _ButtonHeart(),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 92,
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              decoration: BoxDecoration(color: cardBackground),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  _SightName(this.sight.name),
                  SizedBox(height: 2),
                  _SightDetails(this.sight.details),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Фотография места
class _SightPhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 96,
      decoration: BoxDecoration(color: Colors.grey),
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
      child: Text(this.type.toLowerCase(),
          overflow: TextOverflow.ellipsis, maxLines: 1, style: textBold14White),
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
      child: Text(this.name,
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
      child: Text(this.details,
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
      decoration: BoxDecoration(color: Colors.blueGrey),
    );
  }
}
