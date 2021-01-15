import 'package:basic_3/slide_item.dart';
import 'package:flutter/cupertino.dart';

class SliderApp extends StatelessWidget {
  final int index;
  SliderApp(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 30),
          height: 250,
          width: 250,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(slideList[index].imageUrl,),
                  fit: BoxFit.cover)),
        ),
        Text(
          slideList[index].title,
          style: TextStyle(
              // letterSpacing: 2,
              fontSize: 25,
              fontWeight: FontWeight.w400),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 8, 10),
          child: Text(
            slideList[index].description,
            style: TextStyle(
              letterSpacing: 1,
              fontSize: 15,
            ),
          ),
        ),
      ]),
    );
  }
}
