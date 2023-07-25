import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            titleWidget: Text(
              "Write Title of page",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
            body: "Write the more description of the page. Write the more description of the page. Write the more description of the page. Write the more description of the page. ",
            image: Image.asset("images/1.png",
              height: 400,
              width: 400,),
          ),
          PageViewModel(
            titleWidget: Text(
              "Write Title of page",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),
            ),
            body: "Write the more description of the page. Write the more description of the page. Write the more description of the page. Write the more description of the page. ",
            image: Image.asset("images/3.png",
              height: 400,
              width: 400,),
          ),
          PageViewModel(
            titleWidget: Text(
              "Write Title of page",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),
            ),
            body: "Write the more description of the page. Write the more description of the page. Write the more description of the page. Write the more description of the page. ",
            image: Image.asset("images/3.png",
              height: 400,
              width: 400,),
          ),
          PageViewModel(
            titleWidget: Text(
              "Write Title of page",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),
            ),
            body: "Write the more description of the page. Write the more description of the page. Write the more description of the page. Write the more description of the page. ",
            image: Image.asset("images/4.png",
              height: 400,
              width: 400,),
          )
        ],
        onDone: (){
          Navigator.pushNamed(context, "homeScreen");
        },
        onSkip: (){},
        showSkipButton: true,
        skip: Text(
          "Skip",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xff6c63ff),
          ),
        ),
        next: Icon(
          Icons.arrow_forward,
          color: Color(0xff6c63ff),
        ),
        done: Text(
          "Done",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xff6c63ff),
          ),
        ),
        dotsDecorator: DotsDecorator(
          size: Size.square(10),
          activeSize: Size(20, 10),
          color: Colors.black26,
          activeColor: Color(0xff6c63ff),
          spacing: EdgeInsets.symmetric(horizontal: 3),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),

      ),
    );
  }
}
