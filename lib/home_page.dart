import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:tarixiyshaxslar/al_page.dart';
import 'package:tarixiyshaxslar/berun_page.dart';
import 'package:tarixiyshaxslar/bobur_page.dart';
import 'package:tarixiyshaxslar/chingiz_page.dart';
import 'package:tarixiyshaxslar/einstein_page.dart';
import 'package:tarixiyshaxslar/franklin_page.dart';
import 'package:tarixiyshaxslar/galiley_page.dart';
import 'package:tarixiyshaxslar/genri_page.dart';
import 'package:tarixiyshaxslar/gitler_page.dart';
import 'package:tarixiyshaxslar/info_page.dart';
import 'package:tarixiyshaxslar/jalol_page.dart';
import 'package:tarixiyshaxslar/kimdir_page.dart';
import 'package:flutter/services.dart';
import 'package:tarixiyshaxslar/muhammad_page.dart';
import 'package:tarixiyshaxslar/mujiz_page.dart';

import 'package:tarixiyshaxslar/nodir_page.dart';
import 'package:tarixiyshaxslar/pyotr_page.dart';
import 'package:tarixiyshaxslar/q_page.dart';
import 'package:tarixiyshaxslar/second_page.dart';
import 'package:tarixiyshaxslar/sino_page.dart';
import 'package:tarixiyshaxslar/stalin_page.dart';
import 'package:tarixiyshaxslar/termiz_page.dart';
import 'package:tarixiyshaxslar/vasko_page.dart';
import 'package:tarixiyshaxslar/xoraz_page.dart';

import 'amir_page.dart';
import 'model/matn.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, InfoPage.id);
              },
              icon: Icon(
                Icons.info,
                size: 22,
              )),
        ],
        title: Text(
          "Tarixiy Shaxslar",
          style: TextStyle( fontFamily: "Billabong",
               fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          _itemList(
              image: "assets/1.jpg",
              name: "Alisher Navoiy",
              year: "(1441-1501)",
              page: SecondPage.id),
          _itemList(
              image: "assets/tem1.jpg",
              name: "Amir Temur",
              year: "(1336-1405)",
              page: AmirPage.id),
          _itemList(
              image: "assets/kar1.jpg",
              name: "Islom Karimov",
              year: "(1938-2016)",
              page: Qpage.id),
          _itemList(
              image: "assets/einst1.jpg",
              name: "Albert Einstein",
              year: "(1879-1955)",
              page: EinsteinPage.id),
          _itemList(
              image: "assets/nod3.jpg",
              name: "Nodira",
              year: "(1792-1842)",
              page: NodirPage.id),
          _itemList(
              image: "assets/bob1.jpg",
              name: "Z.M Bobur",
              year: "(1483-1530)",
              page: BoburPage.id),
          _itemList(
              image: "assets/xor4.jpg",
              name: "al-Xorazmiy",
              year: "(783-850)",
              page: XorazPage.id),
          _itemList(
              image: "assets/al1.jpg",
              name: "al-Farg'oniy",
              year: "(797-865)",
              page: AlPage.id),
          _itemList(
              image: "assets/sino1.jpg",
              name: "ibn Sino",
              year: "(980-1037)",
              page: SinoPage.id),
          _itemList(
              image: "assets/ber1.jpg",
              name: "A.R Beruniy",
              year: "(973-1048)",
              page: BerunPage.id),
          _itemList(
              image: "assets/termiz1.jpg",
              name: "at-Termiziy",
              year: "(824-892)",
              page: TermizPage.id),
          _itemList(
              image: "assets/jalol1.jpg",
              name: "Jaloliddin Manguberdi",
              year: "(1198—1231)",
              page: JalolPage.id),

          _itemList(
              image: "assets/git2.jpg",
              name: "Adolf Hitler",
              year: "(1889-1945)",
              page: GitlerPage.id),
          _itemList(
              image: "assets/nyuton1.jpg",
              name: "Isaak Nyuton",
              year: "(1643-1727)",
              page: KimdirPage.id),
          _itemList(
              image: "assets/genri1.jpg",
              name: "Genri Ford",
              year: "(1863-1947)",
              page: GenriPage.id),
          _itemList(
              image: "assets/vasko1.jpg",
              name: "Vasko da Gama",
              year: "(1460-1524)",
              page: VaskoPage.id),
          _itemList(
              image: "assets/franklin1.jpg",
              name: "Benjamin Franklin",
              year: "(1706-1790)",
              page: FranklinPage.id),

          _itemList(
              image: "assets/stalin3.jpg",
              name: "Losif Stalin",
              year: "(1878-1953)",
              page: StalinPage.id),

          _itemList(
              image: "assets/pyotr1.jpg",
              name: "Pyotr I",
              year: "(1672-1725)",
              page: Pyotr.id),
          _itemList(
              image: "assets/chingiz1.jpg",
              name: "Chingizxon",
              year: "(1162-1227)",
              page: ChingizPage.id),
          _itemList(
              image: "assets/galiley1.jpg",
              name: "Galileo Galiley",
              year: "(1564-1642)",
              page: GalileyPage.id),

        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/tarix.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Tarixiy Shaxslar",
                    style: TextStyle(fontFamily: "Billabong", fontSize: 25),
                  ),
                ],
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                title: const Text('Bosh sahifa'),
                selectedColor: Colors.red,
                onTap: () {
                  Navigator.pop((context));
                },
              ),
            ),

          Card(
            child:   ListTile(
              leading: Icon(
                Icons.info,
                color: Colors.blue,
              ),
              title: const Text('Biz haqimizda'),
              selectedColor: Colors.red,
              onTap: () {
                Navigator.pushNamed(context, InfoPage.id);
              },
            ),
          ),

            Card(
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.blue,
                ),
                title: const Text('chiqish'),
                selectedColor: Colors.red,
                onTap: () {
                  _androidDialog();
                },
              ),
            ),

           Card(
             child:  ListTile(
                 leading: Icon(
                   Icons.add_business_sharp,
                   color: Colors.blue,
                 ),
                 title: const Text(
                   " Qadimgi dunyoning yetti mo'jizasi",
                 ),
                 selectedColor: Colors.red,
                 onTap: () {
                   Navigator.pushNamed(context, MujizPage.id);
                 }),
           )
          ],
        ),
      ),
    );
  }

  Widget _itemList({image, name, year, page}) {
    double width = MediaQuery.of(context).size.width * 0.25;
    double height = MediaQuery.of(context).size.height * 0.1;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, page);
      },
      child: Card(
        margin: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height,
              width: width,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.red),
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover, //change image fill type
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  year,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _androidDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Chiqish"),
            content: Text("Chiqishni xohlayotganingizga ishonchingiz komilmi"),
            actions: [
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Bekor qilish',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                onPressed: () {
                  SystemNavigator.pop();

                },
                child: Text(
                  'Chiqish',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],

          );


        },




    );


  }

}








