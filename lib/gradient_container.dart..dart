import 'package:flutter/material.dart';//Material პაკეტი გამოიყენება Material Design-ის სტილის ვიჯეტების შესაქმნელად
import 'package:testing_first_app/dice_roller.dart';



//ეს მუდმივები განსაზღვრავენ გრადიენტის დაწყების და დასრულების გასწორებებს.
// გრადიენტი გადავა startAlignment-დან (ზედა-მარცხნივ)
// endAlignment-ზე (ქვემოდან-მარჯვნივ).
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
   const GradientContainer(this.color1, this.color2,{super.key});

//ეს არის GradientContainer ვიჯეტის კონსტრუქტორი.
// გრადიენტის ფერების დასადგენად
// საჭიროა ორი ფერის პარამეტრი (color1 და color2)
// და არჩევითი სახელწოდებით პარამეტრის გასაღები.
  final Color color1;
  final Color color2;


  //initialization work
  @override
  Widget build(context) {
    return Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          colors: [color1,color2] ,
          begin: startAlignment ,
          end: endAlignment,
        ),
      ),
      child: const Center(
          child: DiceRoller(),
      ),
    );
  }
}

