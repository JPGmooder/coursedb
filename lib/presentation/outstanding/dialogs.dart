import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:kursach/presentation/additional/setlocation_screen.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';

class MainDialogWidget extends StatelessWidget {
  const MainDialogWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
                background: FittedBox(
              fit: BoxFit.fill,
              child: Container(
                color: Colors.red,
                width: 100,
                height: 300,
              ),
            )),
          ),
          SliverToBoxAdapter(
            child: Card(
              margin: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Стать предпринимателем",
                        textScaleFactor: 0.8,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Опубликуйте своё предприятие в Deliver, чтобы получить полные возможности по осуществлению доставки",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Divider(),
                      ),
                      ...List.generate(5, (index) {
                        late Widget leading;
                        late String title;
                        late String subTitle;
                        switch (index) {
                          case 0:
                            leading = Icon(
                              Icons.map_outlined,
                              color: Colors.white,
                            );
                            title = "Запредельная зона покрытия";
                            subTitle =
                                "Зоны покрытия формируются на текущем местоположении курьеров, обеспечивая доступность доставки по всему миру";
                            break;
                          case 1:
                            leading = Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Icon(
                                  Icons.attach_money_rounded,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                Icon(
                                  Icons.attach_money_rounded,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                Icon(
                                  Icons.attach_money_rounded,
                                  color: Colors.white,
                                  size: 15,
                                )
                              ],
                            );
                            title = "Технически бесплатный сервис";
                            subTitle =
                                "Размещение компаний в Deliver абсолютно бесплатно!";
                            break;
                          case 2:
                            leading = Icon(
                              Icons.auto_graph_sharp,
                              color: Colors.white,
                            );
                            title = "Актуальная статистика";
                            subTitle =
                                "Получите доступ к актуальной статистике предприятия для осуществления точного прогнозирования с помощью наших автоматизированных систем. ";
                            break;
                          case 3:
                            leading = Icon(
                              Icons.security,
                              color: Colors.white,
                            );
                            title = "Безопасно";
                            subTitle =
                                "Каждый курьер отслеживается на нашей карте в режиме реального времени, а техническая поддержка работает в формате 24/7 ";
                            break;
                          case 4:
                            leading = Icon(
                              Icons.percent_outlined,
                              color: Colors.white,
                            );
                            title = "Эффективно";
                            subTitle =
                                "Благодаря Deliver десятки компаний увеличили свой доход более чем на 25%";
                            break;
                          default:
                        }

                        return ListTile(
                          leading: SizedBox(
                              width: 45,
                              height: 50,
                              child: GradientMask(
                                  size: 35,
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  child: leading)),
                          isThreeLine: true,
                          title: Text(title,
                              style: Theme.of(context).textTheme.titleMedium),
                          subtitle: Text(
                            subTitle,
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        );
                      }),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text.rich(
                            textAlign: TextAlign.justify,
                            TextSpan(
                                text:
                                    "Нажимая на кнопку 'Продолжить', вы принимаете условия",
                                style: Theme.of(context).textTheme.labelMedium,
                                children: <InlineSpan>[
                                  TextSpan(
                                      text: " пользовательского соглашения.",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.italic),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () => print("Aboba")),
                                ])),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 8),
                        child: NeumorphicButton(
                          onPressed: () async => Navigator.of(context).pushNamed(
                              SetLocationScreen.path,
                              arguments: LocationPickerMode.orgAddress),
                          style: const NeumorphicStyle(depth: -5),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: const Center(child: Text("Продолжить")),
                          ),
                        ),
                      )
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
