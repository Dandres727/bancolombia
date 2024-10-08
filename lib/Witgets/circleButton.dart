import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget{
    final Color color;
    final Color colorIcon;
    final IconData iconData;
    final bool showBadge;

    const CircleButton({
      Key? key, 
      required this.color, 
      required this.iconData, 
      this.showBadge = false,
      required this.colorIcon, 
    }): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle
          ),
          child: Icon(
            iconData,
            size: 25,
            color: colorIcon,
          ),
        ),
        if(showBadge)
          Positioned(
            top: -1,
            right: 0,
            child: Container(
              width: 13,
              height: 13,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
                border: Border.all(
                  width: 3,
                  color: Colors.white
                )
              ),
            ),
          )
      ],
    );
  }
  
}