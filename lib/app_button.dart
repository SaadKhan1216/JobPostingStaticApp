import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String label;

  const AppButton({required this.label}); 
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
        child: Container(
          height: 71,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xFF5D5D67), width: 1),
              borderRadius: BorderRadius.circular(15)),
          child: Text(label,style: const TextStyle(
            color: Color(0xff191720),
            fontSize: 15,
            fontWeight: FontWeight.bold
            ),
          ),
          ),      
        )
      ],
    );
  }
}
