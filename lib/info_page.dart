import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  static final String id = "info_page";

  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                padding: EdgeInsets.all(20),

                height: 300,
                child: Center(
                  child: Image.asset("assets/tarix.jpg",fit: BoxFit.cover,),

                ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(20),
              child: Text("Ushbu ilova 2023 - yil Do'stmurodov Temurbek tomonidan yaratildgan. Ilovada tarixiy shahslar aks ettirildi.  Ilovada ular qanday buyuk ishlar olib borishgan, ular aslida qanday bo'lgan va kim bo'lgan degan savollarga  javob olsangiz bo'ladi va h.k.",style: TextStyle(fontSize: 16),),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(20),
              child: Text("takliflar yoki xato va kamchiliklar topsangiz murojat uchun",style: TextStyle(fontSize: 25),),
            ),


            Container(
              padding: EdgeInsets.all(20),
              child:   Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Icon(Icons.phone),
                      Text("998908829666 / 998918111096 ",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold),),

                    ],
                  ),


                ],
              ),
            ),


            Container(
              padding: EdgeInsets.all(20),
              child:   Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Icon(Icons.telegram),
                      Text("@dasturchigmail",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold),),

                    ],
                  ),


                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
