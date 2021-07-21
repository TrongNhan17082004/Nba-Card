import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //! Background
  String defaultBackground =
      'https://media.giphy.com/media/26vUGuV1WxhbkEKZy/giphy.gif';
  String lebronBackground =
      'https://media.giphy.com/media/26vUGuV1WxhbkEKZy/giphy.gif';
  String giannisBackground =
      'https://media.giphy.com/media/f9Z4Gdile867KoQiul/giphy.gif';
  String curryBackground =
      'https://media.giphy.com/media/GQUWS7FTEMOSeeepET/giphy.gif';

  //! Avatar
  String defaultAvatar = 'images/lebron_face.jpg';
  String lebronAvatar = 'images/lebron_face.jpg';
  String giannisAvatar = 'images/giannis_face.jpg';
  String curryAvatar = 'images/curry_face.jpg';

  //! Card
  Color defaultCard1 = Color(0xFFEFD84F);
  Color defaultCard2 = Color(0xFF9839F0);

  //! Button

  // Lebron
  Color colorLebron1 = Color(0xFFEFD84F);
  Color colorLebron2 = Color(0xFF9839F0);

  // Giannis Color(0xFF48B776),Color(0xFFDAD8DF)
  Color colorGiannis1 = Colors.black;
  Color colorGiannis2 = Colors.white;

  // Curry Color(0xFF1C4BC9),Color(0xFFE8BF04)
  Color colorCurry1 = Colors.black;
  Color colorCurry2 = Colors.white;

  //! Name Color
  Color defaultNameColor1 = Color(0xFFEFD84F);
  Color defaultNameColor2 = Color(0xFF9839F0);

  //! Text
  // Default
  String defaultText1 = 'Lebron ';
  String defaultText2 = 'James';

  // Lebron
  String lebronText1 = 'Lebron ';
  String lebronText2 = 'James';

  // Giannis
  String giannisText1 = 'Giannis';
  String giannisText2 = '';

  // Curry
  String curryText1 = 'Stephen ';
  String curryText2 = 'Curry';

  //! Information
  // Default
  String defaultHeight = 'Height : 2,06 m';
  String defaultWeight = 'Weight : 113 kg';

  // Lebron
  String lebronHeight = 'Height : 2,06 m';
  String lebronWeight = 'Weight : 113 kg';

  // Giannis
  String giannisHeight = 'Height : 2,11 m';
  String giannisWeight = 'Weight : 110 kg';

  // Curry
  String curryHeight = 'Height : 1,91 m';
  String curryWeight = 'Weight : 86 kg';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          //! Background
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(defaultBackground),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //! Avatar
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(defaultAvatar),
              ),
              //! Text
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: defaultText1,
                      style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 30,
                          color: defaultNameColor1),
                    ),
                    TextSpan(
                      text: defaultText2,
                      style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 30,
                          color: defaultNameColor2),
                    ),
                  ],
                ),
              ),
              //! Height
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                color: defaultCard1,
                child: ListTile(
                  leading: Container(
                    child: Icon(
                      Icons.accessibility,
                      color: Colors.black,
                    ),
                  ),
                  title: Text(
                    defaultHeight,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              //! Weight
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20),
                color: defaultCard2,
                child: ListTile(
                  leading: Icon(
                    Icons.monitor_weight,
                    color: Colors.black,
                  ),
                  title: Text(
                    defaultWeight,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //! Lebron Button
                    FlatButton(
                      color: colorLebron1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: BorderSide(color: colorLebron1),
                      ),
                      onPressed: () {
                        setState(() {
                          //! Change Background
                          defaultBackground = lebronBackground;
                          //! Change Avatar
                          defaultAvatar = lebronAvatar;
                          //! Change Name
                          defaultText1 = lebronText1;
                          defaultText2 = lebronText2;
                          //! Change Name's Color
                          defaultNameColor1 = Color(0xFFEFD84F);
                          defaultNameColor2 = Color(0xFF9839F0);
                          //! Change Info
                          defaultHeight = lebronHeight;
                          defaultWeight = lebronWeight;
                          //! Change Color
                          colorGiannis1 = Colors.black;
                          colorGiannis2 = Colors.white;
                          colorCurry1 = Colors.black;
                          colorCurry2 = Colors.white;
                          colorLebron1 = Color(0xFFEFD84F);
                          colorLebron2 = Color(0xFF9839F0);
                          //! Change Avatar
                          defaultCard1 = Color(0xFFEFD84F);
                          defaultCard2 = Color(0xFF9839F0);
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        child: Text(
                          'Lebron',
                          style: TextStyle(color: colorLebron2),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    //! Giannis Button
                    FlatButton(
                      color: colorGiannis1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: BorderSide(color: colorGiannis1),
                      ),
                      onPressed: () {
                        setState(() {
                          //! Change Background
                          defaultBackground = giannisBackground;
                          //! Change Avatar
                          defaultAvatar = giannisAvatar;
                          //! Change Name
                          defaultText1 = giannisText1;
                          defaultText2 = giannisText2;
                          //! Change Name's Color
                          defaultNameColor1 = Color(0xFF48B776);
                          defaultNameColor2 = Color(0xFFDAD8DF);
                          //! Change Info
                          defaultHeight = giannisHeight;
                          defaultWeight = giannisWeight;
                          //! Change Color
                          colorLebron1 = Colors.black;
                          colorLebron2 = Colors.white;
                          colorCurry1 = Colors.black;
                          colorCurry2 = Colors.white;
                          colorGiannis1 = Color(0xFF48B776);
                          colorGiannis2 = Color(0xFFDAD8DF);
                          //! Change Avatar
                          defaultCard1 = Color(0xFF48B776);
                          defaultCard2 = Color(0xFFDAD8DF);
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        child: Text(
                          'Giannis',
                          style: TextStyle(color: colorGiannis2),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    //! Curry Button
                    FlatButton(
                      color: colorCurry1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: BorderSide(color: colorCurry1),
                      ),
                      onPressed: () {
                        setState(() {
                          //! Change Background
                          defaultBackground = curryBackground;
                          //! Change Avatar
                          defaultAvatar = curryAvatar;
                          //! Change Name
                          defaultText1 = curryText1;
                          defaultText2 = curryText2;
                          //! Change Name's Color
                          defaultNameColor1 = Color(0xFF1C4BC9);
                          defaultNameColor2 = Color(0xFFE8BF04);
                          //! Change Info
                          defaultHeight = curryHeight;
                          defaultWeight = curryWeight;
                          //! Change Color
                          colorLebron1 = Colors.black;
                          colorLebron2 = Colors.white;
                          colorCurry1 = Color(0xFF1C4BC9);
                          colorCurry2 = Color(0xFFE8BF04);
                          colorGiannis1 = Colors.black;
                          colorGiannis2 = Colors.white;
                          //! Change Avatar
                          defaultCard1 = Color(0xFF1C4BC9);
                          defaultCard2 = Color(0xFFE8BF04);
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        child: Text(
                          'Curry',
                          style: TextStyle(color: colorCurry2),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
