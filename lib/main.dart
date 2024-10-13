import 'package:flutter/material.dart';

void main() {
  runApp(Sebha());
  int num = 0;
}

class Sebha extends StatelessWidget {
  const Sebha({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: sebhascreen(),
    );
  }
}

class sebhascreen extends StatefulWidget {
  const sebhascreen({super.key});

  @override
  State<sebhascreen> createState() => _sebhascreenState();
}

class _sebhascreenState extends State<sebhascreen> {
  @override
  int num = 0;

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/default_bg.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          actions: [
            Icon(
              Icons.arrow_back,
              color: Colors.black,
            )
          ],
          title: Text('اسلامي',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700)),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
        ),
        bottomNavigationBar: BottomNavigationBar(
            iconSize: 20,
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.black,
            type: BottomNavigationBarType.shifting,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                  label: StringsManager.tasbehLabel),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                  label: StringsManager.quranLabel),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                  label: StringsManager.hadithLabel),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                  label: StringsManager.radioLabel),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: Icon(Icons.settings),
                  label: StringsManager.settingsLabel)
            ]),
        body: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                            image: AssetImage('assets/images/head_sebha_logo.png')),
                      ],
                    ),
                  ),
                  Positioned(top: 70,left: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                            image: AssetImage('assets/images/body_sebha_logo.png')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "عدد التسبيحات ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 25),
                )
              ],
            ),
            Container(
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFB7935F)),
                        onPressed: () {},
                        child: Text("$num"))
                  ],
                ),
                //SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFB7935F)),
                      onPressed: () {
                        setState(() {
                          num++;
                        });
                      },
                      child: Text("سبحان الله"),
                    )
                  ],
                ),
              ]),
            )
          ],
        )),
      ),
    );
  }
}

class StringsManager {
  static const String quranLabel = 'Quran';
  static const String hadithLabel = 'Hadith';
  static const String tasbehLabel = 'Tasbeh';
  static const String radioLabel = 'Radio';
  static const String settingsLabel = 'Settings';
}
