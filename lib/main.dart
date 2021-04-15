
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              children: [ Contactcard(
                name: 'George Clooney',
                mail: 'g.clooney@gmail.com',
                phone: '0556345687',
                url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/George_Clooney_2016.jpg/255px-George_Clooney_2016.jpg',
              ),
                Contactcard(
                  name: 'Michelle Obama',
                  mail: 'M.obama@gmail.com',
                  phone: '01120544832',
                  url: 'https://thumbor.forbes.com/thumbor/fit-in/1200x0/filters%3Aformat%28jpg%29/https%3A%2F%2Fblogs-images.forbes.com%2Fanneglusker%2Ffiles%2F2018%2F12%2FMichelle-Obama-book-cover-shot-e1544143689487-1200x944.jpg',
                ),
                Contactcard(
                  name: 'Kylie Jenner',
                  mail: 'kj.123@outlook.com',
                  phone: '0101330506',
                  url: 'https://world-celebs.com/public/media/celebrity/2019/08/05/b0x5a82ha8dg-kylie-jenner.jpg',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Contactcard extends StatelessWidget {
  String name,mail,phone,url;
  Contactcard({this.name, this.mail, this.phone,this.url
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380.0,
      height: 150.0,
      margin: EdgeInsets.symmetric(vertical: 30.0),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.all(Radius.circular(13.0)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ ListTile(
          leading: CircleAvatar(
            radius: 40.0,
            backgroundImage: NetworkImage(this.url),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ Text(
              this.name,
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
              Row(
                children: [
                  Icon(Icons.mail,color: Colors.yellowAccent),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      this.mail,
                      style: TextStyle(
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold,
                      ) ,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(CupertinoIcons.phone,color: Colors.yellowAccent),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      this.phone,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ) ,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Row(
                  children: [
                    Icon(Icons.favorite, color: Colors.white,),
                    Icon(Icons.favorite, color: Colors.white,),
                    Icon(Icons.favorite, color: Colors.white,),
                    Icon(Icons.favorite, color: Colors.white,),
                    Stack(
                      children: [
                        Icon(Icons.delete, color: Colors.orange,size: 30,),
                        Align(
                          alignment: Alignment.bottomRight,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              /*Padding(padding: EdgeInsets.only(left: 25,)),
              Column(
                children: [
                  Icon(Icons.delete, size:30,color: Colors.deepPurple, ),
                ],
              ),*/
            ],
          ),
        ),
        ],
      ),
    );
  }
}
