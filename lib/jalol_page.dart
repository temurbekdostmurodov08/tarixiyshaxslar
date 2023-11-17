import 'package:flutter/material.dart';

import 'model/matn.dart';
class JalolPage extends StatefulWidget {
  static final String id = "jalol_page";
  const JalolPage({super.key});

  @override
  State<JalolPage> createState() => _JalolPageState();
}

class _JalolPageState extends State<JalolPage> {
  MatnServise matn1 = MatnServise();
  int index = 11;
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
            expandedHeight: 220,
            floating: true,
            pinned: true,
            snap: true,
            elevation: 50,
            backgroundColor: Colors.grey,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
             title: Container(
               color: Colors.red,
              child: Text(
                 "Jaloliddin Manguberdi",
                 style: TextStyle(color: Colors.white,fontSize: 24),
               ),
             ),
              background: Image(
                image: AssetImage('assets/jalol1.jpg'),
                fit: BoxFit.cover,
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
                    const Row(
                      children: [
                        Text(
                          "Ism:",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Jaloliddin Manguberdi",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),
                        )
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
                    Text(
                      "Rasmlar:",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 400,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.red)
                      ),
                      child: PageView(
                        children: [

                          Container(
                            child: Image(
                              image: AssetImage("assets/jalol2.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            child: Image(
                              image: AssetImage("assets/jalol3.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            child: Image(
                              image: AssetImage("assets/jalol4.jpg"),
                              fit: BoxFit.cover,
                            ),

                          ),
                          Container(
                            child: Image(
                              image: AssetImage("assets/jalol5.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),

                        ],
                      ),
                    )
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
