import 'package:flutter/material.dart';

class AllButton extends StatelessWidget{

  final Function()? onTap;

  const AllButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 76, 75, 75),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

}