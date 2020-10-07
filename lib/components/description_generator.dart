import 'package:azkara/components/constants.dart';
import 'package:azkara/components/top_bar.dart';
import 'package:flutter/material.dart';

class DescriptionGenerator extends StatefulWidget {
  @override
  _DescriptionGeneratorState createState() => _DescriptionGeneratorState();
}

class _DescriptionGeneratorState extends State<DescriptionGenerator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildTopAppBar(),
      body: ListView.builder(itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 8.0),
                  child: Text(
                    'Утренний азкар №1',
                    style: TextStyle(
                      color: kAppbarTextColor,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Image.asset('images/image_24.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '''О Аллах, Ты - Господь мой, и нет достойного поклонения, кроме Тебя, Ты создал меня, а я -Твой раб, и я буду хранить верность Тебе, пока у меня хватит сил. Прибегаю к Тебе от зла того, что я сделал, признаю милость, оказанную Тобой мне, и признаю грех свой. Прости же меня, ибо, поистине, никто не прощает грехов, кроме Тебя! (Бухари)''',
                  style: TextStyle(
                    color: kMainTextColor,
                    fontSize: 15.0,
                    fontFamily: 'OpenSans',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '''Аллахумма, Анта Рабби, ля иляха илля Анта, халякта-ни ва ана 'абду-кя, ва ана \"аля 'ахди-кя ва ва'ди-кя ма-стата'ту. А'узу би-кя мин шарри ма сана'ту, абу'у ля-кя би-ни'мати-кя 'аляййя, ва абу'у би-занби, фа-гфир ли, фа-инна-ху ля йагфи-ру-з-зунуба илля Анта!''',
                  style: TextStyle(
                    color: kMainTextColor,
                    fontSize: 15.0,
                    fontFamily: 'OpenSans',
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

AppBar buildTopAppBar() {
  return AppBar(
    backgroundColor: kMainBackground,
    title: Time(),
    actions: <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.notifications_none,
            color: kActiveFontColor,
            size: 25.0,
          ),
        ),
      )
    ],
  );
}
