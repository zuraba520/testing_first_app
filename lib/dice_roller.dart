//ფლატერის ვიჯეტი,რომელიც აჩვენებს კამათლის სურათს და ღილაკს //



import 'dart:math'; // ეს ხაზი ახდენს,ბიბლიოთეკის იმპორტს,
// რომელიც უზრუნველყოფს სხვადასხვა მათემატიკური ფუნქციების
// და კლასების წვდომას მათ შორის რანდომ კლასს.
import 'package:flutter/material.dart';//ეს ხაზი შემოაქვს Flutter Material პაკეტს,
// რომელიც შეიცავს ვიჯეტებს და ინსტრუმენტებს
// Material Design-ის სტილის აპლიკაციების შესაქმნელად

final randomizer = Random();//ეს ქმნის შემთხვევითი კლასის მაგალითს,
// რომელიც გამოყენებული იქნება კოდში მოგვიანებით
// შემთხვევითი რიცხვების გენერირებისთვის.

class DiceRoller extends StatefulWidget { //ეს ქმნის შემთხვევითი კლასის მაგალითს,
  // რომელიც გამოყენებული იქნება კოდში მოგვიანებით
  // შემთხვევითი რიცხვების გენერირებისთვის.

  const DiceRoller({super.key});//ეს არის DiceRoller ვიჯეტის კონსტრუქტორი.
  // ის იღებს არასავალდებულო სახელად პარამეტრულ კლავიშს,
  // რომელიც მემკვიდრეობით არის მიღებული სუპერკლასიდან.


  @override

  State<DiceRoller> createState () {//ეს მეთოდი საჭიროა DiceRoller ვიჯეტის ცვალებადი მდგომარეობის შესაქმნელად.
    // ის აბრუნებს _DiceRollerState-ის მაგალითს,
    // რომელიც არის ქვემოთ განსაზღვრული კერძო კლასი.
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2; //ეს ცვლადი ინახავს კამათლის გასროლის მიმდინარე მნიშვნელობას.
  // ის იწყება ნაგულისხმევი მნიშვნელობით 2.

  void rollDice () {//ეს ფუნქცია წარმოქმნის შემთხვევით რიცხვს 1-დან 6-მდე (მათ შორის)
    // Random კლასის რანდომიზატორის ინსტანციის გამოყენებით
    setState (() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }
  @override
  //ეს მეთოდი პასუხისმგებელია DiceRoller ვიჯეტის ინტერფეისის შექმნაზე.
  // ის აბრუნებს სვეტის ვიჯეტს, რომელიც შეიცავს Image.asset ვიჯეტს,
  // რომელიც აჩვენებს კამათლის სურათს,
  // რომელიც შეესაბამება კამათლის გოლის ამჟამინდელ მნიშვნელობას და TextButton ვიჯეტს,
  // რომელიც ააქტიურებს rollDice ფუნქციას დაჭერისას.
  Widget build (context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width:200,
        ),
        TextButton(//ეს ვიჯეტი აჩვენებს ღილაკს,
          // რომელიც შეიძლება დააწკაპუნოთ ტექსტით "Roll Dice bitch".
          // დაჭერისას ის ააქტიურებს rollDice ფუნქციას.
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20,),
            foregroundColor:Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice bitch'),
        )
      ],
    );
  }
}