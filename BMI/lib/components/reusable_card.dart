import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  //Default constructor contains the key, a concept useful when your
  //Widget moves around in the component tree or an animation, check more on youtube
  //We add curly braces so we can specify the parameters by name instead of order
  ReusableCard({required this.colour, required this.cardChild, required this.onPress });

  //Why final and not const? There are subtle differences, const does not have access to info after runtime
  //Say DateTime.now() cannot be assigned to a const since it's calculated at runtime, but final is alright
  //In this case, color is created when our app is running and a card is created, so it's at runtime
  final Color colour;
  final Widget cardChild;
  //final Function onPress; teaching our constructor to accept void callbacks
  //https://stackoverflow.com/questions/64484113/the-argument-type-function-cant-be-assigned-to-the-parameter-type-void-funct
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    //GestureDetector instead of a flatbutton so no styling is affected
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        // Careful for decorations, they need the color inside or will crash
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
