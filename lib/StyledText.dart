import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});//ეს არის StyledText ვიჯეტის კონსტრუქტორი.
  // მას სჭირდება პარამეტრის საჭირო ტექსტი (ტექსტი,
  // რომელიც უნდა იყოს ნაჩვენები) და
  // სურვილისამებრ სახელად პარამეტრის გასაღები.

 final String text;

  @override
  Widget build(context) {
    return  Text(
      text,
      style: const TextStyle(
      color: Colors.white,
      fontSize: 28,
    ),
    );
  }
}


