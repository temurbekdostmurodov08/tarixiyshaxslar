import 'package:flutter/material.dart';

import 'model/matn.dart';
class GalileyPage extends StatefulWidget {
  static final String id = "galiley_page";
  const GalileyPage({super.key});

  @override
  State<GalileyPage> createState() => _GalileyPageState();
}

class _GalileyPageState extends State<GalileyPage> {
  MatnServise matn1 = MatnServise();
  int index = 22;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white,size: 26,),
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
                  "Galileo Galiley",
                  style: TextStyle(color: Colors.white,fontSize: 24),
                ),
              ),
              background: Image(
                image: AssetImage('assets/galiley1.jpg'),
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
                    Row(
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
                          "Galileo Galiley",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
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
                              image: AssetImage("assets/galiley2.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            child: Image(
                              image: AssetImage("assets/galiley3.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            child: Image(
                              image: AssetImage("assets/galiley4.jpg"),
                              fit: BoxFit.cover,
                            ),

                          ),
                          Container(
                            child: Image(
                              image: AssetImage("assets/galiley5.jpg"),
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
