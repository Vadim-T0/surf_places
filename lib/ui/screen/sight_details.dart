import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surf_places/ui/const/text_styles.dart';
import 'package:surf_places/ui/const/colors.dart';
import 'package:surf_places/ui/const/strings.dart';
import 'package:surf_places/mocks.dart';
import 'package:surf_places/domain/sight.dart';

/// Экран детализации места.
class SightDetails extends StatelessWidget {
  final Sight card;

  const SightDetails({Key key, this.card}) : super(key: key);

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
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Column(
                  children: [
                    Container(
                      // Название места
                      width: double.infinity,
                      child: Text('${card.name}', style: textBold24Secondary),
                    ),
                    SizedBox(height: 2),
                    Row(
                      children: [
                        Text('${card.type}', style: textBold14),
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
                      child: Text('${card.details}',
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
        child: Text(AppStrings.routeButton.toUpperCase(),
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
      child: Text(AppStrings.planButton, style: textRegular14SecondaryInactive),
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
      child: Text(AppStrings.favoriteButton, style: textRegular14Secondary),
    );
  }
}
