import 'package:flutter/material.dart';
import 'package:surf_places/domain/sight.dart';
import 'package:surf_places/ui/const/text_styles.dart';
import 'package:surf_places/ui/const/colors.dart';

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
                Container(
                  // Заглушка вместо фотографии
                  width: double.infinity,
                  height: 96,
                  decoration: BoxDecoration(color: Colors.grey),
                ),
                Positioned(
                  // Тип достопримечательности
                  left: 16,
                  top: 16,
                  child: Container(
                    // Контейнер чтобы ограничить длину текста
                    width: 200,
                    child: Text(this.sight.type.toLowerCase(),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: textBold14White),
                  ),
                ),
                Positioned(
                  // Заглушка вместо иконки-сердца
                  right: 18,
                  top: 19,
                  child: Container(
                    width: 20,
                    height: 18,
                    decoration: BoxDecoration(color: Colors.blueGrey),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 92,
              padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
              decoration: BoxDecoration(
                  //border: Border.all(color: Colors.yellow),
                  color: cardBackground),
              child: Column(
                children: [
                  Container(
                    // Название достопримечательности
                    width: double.infinity,
                    height: 40,
                    child: Text(this.sight.name,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: textMedium16Secondary),
                  ),
                  Container(
                    // Описание достопримечательности
                   // height: 18,
                    padding: EdgeInsets.only(top: 2),
                    width: double.infinity,
                    child: Text(this.sight.details,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: textRegular14Secondary2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
