import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int qindex = 0;
  int rightrow = 0;
  int imageindex = 0;
  String rightAnswer = "Choose an option first";
  void validateanswer(int correct) {
    //Validation of right answer.

    if (qindex < 7) {
      if (correct == 1) {
        setState(() {
          qindex = qindex + 1;
          imageindex = imageindex + 1;
        });
      } else {
        rightrow = 0;
        while (options[qindex][rightrow]['correct'] != 1) {
          setState(() {
            rightrow = rightrow + 1;
          });
        }
        print("The right answer is : " + options[qindex][rightrow]['option']);
        setState(() {
          rightAnswer = options[qindex][rightrow]['option'];
        });
      }
    } else {
      //We need to somehow return a Text widget in this condition
      print("Quiz has ended.");
    }
  }

  var options = {
    0: [
      {'option': 'Gandhi', 'correct': 1},
      {'option': 'Netaji', 'correct': 0},
      {'option': 'Maulana Abul Kalam', 'correct': 0},
      {'option': 'Bhagat Singh', 'correct': 0}
    ],
    1: [
      {'option': 'Lal Bahadur', 'correct': 0},
      {'option': 'Shivaji', 'correct': 0},
      {'option': 'Netaji', 'correct': 1},
      {'option': 'Bhagat Singh', 'correct': 0}
    ],
    2: [
      {'option': 'Maulana Abul Kalam Azad', 'correct': 1},
      {'option': 'Lal Bahadur', 'correct': 0},
      {'option': 'Magal Pandey', 'correct': 0},
      {'option': 'Surya Sen', 'correct': 0}
    ],
    3: [
      {'option': 'Magal Pandey', 'correct': 0},
      {'option': 'Netaji', 'correct': 0},
      {'option': 'Bhagat Singh', 'correct': 1},
      {'option': 'Lal Bahadur', 'correct': 0}
    ],
    4: [
      {'option': 'Rani Lakshmi Bai', 'correct': 0},
      {'option': 'Bhagat Singh', 'correct': 0},
      {'option': 'Mangal Pandey', 'correct': 1},
      {'option': 'Bal Gangadhar Tilak', 'correct': 0}
    ],
    5: [
      {'option': 'Sardar Vallabhai Patel', 'correct': 1},
      {'option': 'Maulana Abul Kalam Azad', 'correct': 0},
      {'option': 'Mangal Pandey', 'correct': 0},
      {'option': 'Bal Gangadhar Tilak', 'correct': 0}
    ],
    6: [
      {'option': 'Rani Lakshmi Bai', 'correct': 1},
      {'option': 'Bhagat Singh', 'correct': 0},
      {'option': 'Tantia Tope', 'correct': 0},
      {'option': 'Bal Gangadhar Tilak', 'correct': 0}
    ],
    7: [
      {'option': 'Rani Lakshmi Bai', 'correct': 0},
      {'option': 'Bhagat Singh', 'correct': 0},
      {'option': 'Lal Bahadur Shastri', 'correct': 1},
      {'option': 'Bal Gangadhar Tilak', 'correct': 0}
    ],
  };
  List<String> images = [
    "images/Gandhi.jpg",
    "images/Netaji.jpg",
    "images/AbulKalam.jpg",
    "images/Bhagat.png",
    "images/Mangal.jpg",
    "images/Sardar.jpg",
    "images/Rani.jpg",
    "images/LalBahadur.jpg"
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Alpha India"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20.0),
              child: Card(
                child: InkWell(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    child: Image.asset(
                      images[imageindex],
                      height: 600.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Text("Who is this person ? ",
                  style: TextStyle(fontSize: 26.0, color: Colors.orange)),
            ),
            Container(
              child: Column(
                children: [
                  MaterialButton(
                    onPressed: () =>
                        validateanswer(options[qindex][0]['correct']),
                    child: Text(
                      options[qindex][0]['option'],
                      style: TextStyle(fontSize: 24.0, color: Colors.white),
                    ),
                    color: Colors.green,
                    minWidth: 400.0,
                  ),
                  MaterialButton(
                    onPressed: () =>
                        validateanswer(options[qindex][1]['correct']),
                    child: Text(
                      options[qindex][1]['option'],
                      style: TextStyle(fontSize: 24.0, color: Colors.white),
                    ),
                    color: Colors.green,
                    minWidth: 400.0,
                  ),
                  MaterialButton(
                    onPressed: () =>
                        validateanswer(options[qindex][2]['correct']),
                    child: Text(
                      options[qindex][2]['option'],
                      style: TextStyle(fontSize: 24.0, color: Colors.white),
                    ),
                    color: Colors.green,
                    minWidth: 400.0,
                  ),
                  MaterialButton(
                    onPressed: () =>
                        validateanswer(options[qindex][3]['correct']),
                    child: Text(
                      options[qindex][3]['option'],
                      style: TextStyle(fontSize: 24.0, color: Colors.white),
                    ),
                    color: Colors.green,
                    minWidth: 400.0,
                  ),
                ],
              ),
            ),
            Text("The right answer is : " + rightAnswer),
          ],
        ),
      ),
    );
  }
}
