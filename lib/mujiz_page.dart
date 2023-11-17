import 'package:flutter/material.dart';

import 'model/matn.dart';
class MujizPage extends StatefulWidget {
  static final String id = "mo'jiz_page";
  const MujizPage({super.key});

  @override
  State<MujizPage> createState() => _MujizPageState();
}

class _MujizPageState extends State<MujizPage> {
  MatnServise matn1 = MatnServise();
  int index = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(

            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.black,size: 26,),
              onPressed: () => Navigator.of(context).pop(),
            ),
            expandedHeight: 22,
            floating: true,
            pinned: true,
            snap: true,
            elevation: 1,
            backgroundColor: Colors.grey,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
            title: Container(
              color: Colors.red,
              child: Text(
                " Qadimgi Dunyoning 7 mo'jizasi",
                style: TextStyle(color: Colors.white,fontSize: 22),
              ),
              ),


            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Qadimgi Dunyoning 7 mo'jizasi",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Haqida ma'lumotlar:",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      matn1
                          .getMatn(index)
                          .matn,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 20,),




                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
