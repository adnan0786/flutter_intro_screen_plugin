import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Introduction Screen Plugin'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        body: IntroductionScreen(
      pages: [
        PageViewModel(
            bodyWidget: Center(
              child: Text(
                "Earn a kwikbuck by selling products, providing services or completing tasks",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey.shade500, shadows: [
                  Shadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5,
                    offset: Offset(1, 1),
                  )
                ]),
              ),
            ),
            image: Image.asset("assets/intro1.png"),
            footer: Text("this is foooter"),
            titleWidget: Text(
              "this is custom title",
              style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
            )),
        PageViewModel(
            title: "Save Time",
            bodyWidget: Center(
              child: Text(
                "Instantly connect with Buyers & Sellers near you",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey.shade500, shadows: [
                  Shadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5,
                    offset: Offset(1, 1),
                  )
                ]),
              ),
            ),
            image: Image.asset("assets/intro2.png")),
        PageViewModel(
            title: "Enjoy Freedom",
            bodyWidget: Center(
              child: Text(
                "Work when you want & earn what you need",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey.shade500, shadows: [
                  Shadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5,
                    offset: Offset(1, 1),
                  )
                ]),
              ),
            ),
            image: Image.asset("assets/intro3.png")),
        PageViewModel(
            title: "Sell Safer",
            bodyWidget: Center(
              child: Text(
                "You’ll always know who you’re buying from or selling to.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey.shade500, shadows: [
                  Shadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5,
                    offset: Offset(1, 1),
                  )
                ]),
              ),
            ),
            image: Image.asset("assets/intro4.png")),
        PageViewModel(
            title: "Have Control",
            bodyWidget: Center(
              child: Text(
                "Create your store & let the app do all the work",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey.shade500, shadows: [
                  Shadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5,
                    offset: Offset(1, 1),
                  )
                ]),
              ),
            ),
            image: Image.asset("assets/intro5.png"))
      ],
      onDone: () {
        print("Done is clicked");
      },
      showSkipButton: true,
      showNextButton: true,
      nextFlex: 1,
      dotsFlex: 2,
      skipFlex: 1,
      animationDuration: 1000,
      curve: Curves.fastOutSlowIn,
      dotsDecorator: DotsDecorator(
          spacing: EdgeInsets.all(5),
          activeColor: Color(0xff20D5B2),
          // activeSize: Size.square(10),
          // size: Size.square(5),
          activeSize: Size(20, 10),
          size: Size.square(10),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
      skip: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: Color(0xff20D5B2),
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 10,
                  offset: Offset(4, 4))
            ]),
        child: Center(
          child: Text(
            "Skip",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      next: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Color(0xff20D5B2), width: 2)),
        child: Center(
          child: Icon(
            Icons.navigate_next,
            size: 30,
            color: Color(0xff20D5B2),
          ),
        ),
      ),
      done: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: Color(0xff20D5B2),
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 40,
                  offset: Offset(4, 4))
            ]),
        child: Center(
          child: Text(
            "Done",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ));
  }
}
