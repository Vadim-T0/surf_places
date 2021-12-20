import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surf_places/ui/const/text_styles.dart';
import 'package:surf_places/ui/const/colors.dart';

/// Экран детализации места.
class SightDetails extends StatefulWidget {
  @override
  _SightDetailsState createState() => _SightDetailsState();
}

class _SightDetailsState extends State<SightDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: [
                  Container(
                    // Заглушка фотографии места
                    width: double.infinity,
                    height: 360,
                    decoration: BoxDecoration(color: Colors.grey),
                  ),
                  Positioned(
                    // Заглушка кнопки "Назад"
                    left: 16,
                    top: 36,
                    child: _ButtonBack(),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                child: Column(
                  children: [
                    Container(
                      // Название места
                      width: double.infinity,
                      child: Text('Пряности и радости',
                          style: textBold24Secondary),
                    ),
                    SizedBox(height: 2),
                    Row(
                      children: [
                        Text('ресторан', style: textBold14),
                        // Тип места
                        SizedBox(width: 16),
                        Text('закрыто до 09:00',
                            style: textRegular14Secondary2),
                        // Время работы
                      ],
                    ),
                    Container(
                      // Описание места
                      margin: EdgeInsets.only(top: 24, bottom: 24),
                      width: double.infinity,
                      child: Text(
                          'Пряный вкус радостной жизни вместе с шеф-поваром Изо Дзандзава, благодаря которой у гостей ресторана есть возможность выбирать из двух направлений: европейского и восточного',
                          style: textRegular14Secondary),
                    ),
                    _ButtonRoute(),
                    Padding(
                      padding: const EdgeInsets.only(top: 24, bottom: 8),
                      child: Divider(
                        height: 1,
                        thickness: 1,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: _ButtonPlan(),
                        ),
                        Expanded(
                          child: _ButtonFavorite(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: scaffoldBackground);
  }
}

/// Кнопка "Назад"
class _ButtonBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(color: Colors.blueGrey),
    );
  }
}

/// Кнопка "Постоить маршрут"
class _ButtonRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(color: buttonGreen),
        child: Text('Построить маршрут'.toUpperCase(),
            style: textBold14WhiteSpacing),
      ),
    );
  }
}

/// Кнопка "Запланировать"
class _ButtonPlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Text('Запланировать', style: textRegular14SecondaryInactive),
    );
  }
}

/// Кнопка "В Избранное"
class _ButtonFavorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Text('В Избранное', style: textRegular14Secondary),
    );
  }
}
