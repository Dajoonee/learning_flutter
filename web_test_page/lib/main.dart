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
      home: HomeScreen2(),
    );
  }
}
List<String> lang1 = <String>['''원하는 의류 도안을 선택 후 신체 사이즈를 입력하세요 :)
          의류 도안과 신체 사이즈 입력이 완료되면 [설문조사 참여 후 다운로드] 버튼이 활성화 됩니다.''',];
String data = '사이즈를 선택하세요.';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red.shade200,
        title: Text('Fittu - Beta'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.language),
            onPressed: (){},
          ),
        ],


      ),
      body: Column(
//        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('WELCOME TO FITTU',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 55.0,
          ),
        ),
//          SizedBox( height: 5),
          Text('Beta Version.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 15.0,
            ),
          ),
          SizedBox(
            height: 50.0,
            width: 400.0,
            child: Divider(
              thickness: 1.0,
              color: Colors.pink.shade500,
            ),
          ),

          Text('''원하는 의류 도안을 선택 후 신체 사이즈를 입력하세요 :)
          의류 도안과 신체 사이즈 입력이 완료되면 [설문조사 참여 후 다운로드] 버튼이 활성화 됩니다.''',
            textAlign: TextAlign.center,
            style: TextStyle(

//              color: Colors.,
              fontSize: 15.0,
            ),
          ),
          SizedBox( height: 50),
          ListView(

            scrollDirection: Axis.horizontal,
//            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:  makeSketches(),

          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 50,
            child: RaisedButton(
                color: Colors.blueAccent.shade100,
                child: Text('설문조사 참여 후 다운로드',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20
                  ) ,
                ),
                onPressed: null
            ),
          ),
        ]
      ),

    );
  }

}
int click = 0;
class FlatSketch extends StatelessWidget {
  int _value = 0;
  String image, name;
  // width: MediaQuery.of(context).size.width/3,
  //          height: MediaQuery.of(context).size.height/3,
  FlatSketch(String image, String name){
    this.image = image;
    this.name = name;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget> [
        Container(
           width: MediaQuery.of(context).size.width/3,
           height: MediaQuery.of(context).size.height/3,
          child: FlatButton(
            onPressed: (){

            },
            child: Image.asset('assets/$image'),
          ),
        ),
        Text(name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

List<String> images = ["flatSketch1.jpg","flatSketch2.jpg","flatSketch3.jpg"];
List<String> names = ["바지","티셔츠","셔츠"];

List<Widget> makeSketches () {
  List<Widget> results = [];
  for (var i=0; i < images.length; i++){
      results.add(InkWell(
        onTap: (

            ) {},
        child: FlatSketch(images[i], names[i])
      ),
    );
    return results;
  }
}


class HomeScreen2 extends StatefulWidget {
  @override
  _HomeScreen2State createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red.shade200,
        title: Text('Fittu - Beta'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.language),
            onPressed: (){},
          ),
        ],


      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
//        crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('WELCOME TO FITTU',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'KaushanScript',
                  fontWeight: FontWeight.bold,
                  fontSize: 55.0,
                ),
              ),
//          SizedBox( height: 5),
              Text('Beta Version.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 50.0,
                width: 400.0,
                child: Divider(
                  thickness: 1.0,
                  color: Colors.pink.shade500,
                ),
              ),

              Text('''원하는 의류 도안을 선택 후 신체 사이즈를 입력하세요 :)
            의류 도안과 신체 사이즈 입력이 완료되면 [설문조사 참여 후 다운로드] 버튼이 활성화 됩니다.''',
                textAlign: TextAlign.center,
                style: TextStyle(

//              color: Colors.,
                  fontSize: 15.0,
                ),
              ),
              SizedBox( height: 50),
              Column(
                children : makeSketches(),
                ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 50,
                child: RaisedButton(
                    color: Colors.blueAccent.shade100,
                    child: Text('설문조사 참여 후 다운로드',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20
                      ) ,
                    ),

                ),
              ),
            ]
        ),
      ),

    );
  }
}




