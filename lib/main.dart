import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:another_transformer_page_view/another_transformer_page_view.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<String> images = ['images/background5.webp', 'images/background3.jpg'];

  int? index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Swiper(
              itemBuilder: (BuildContext context, int index) {
                return Image.asset(
                  images[index],
                  fit: BoxFit.fill,
                );
              },
              onIndexChanged: (int index) {
                index = index;
              },
              index: index,
              itemCount: 2,
              pagination: SwiperPagination(),
              control: SwiperControl(color: Colors.white),
            ),
            Positioned(
                child: Row(
                  children: [
                    SizedBox(
                      width: 195,
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )
                            )
                        ),
                        child: Image(
                          image: AssetImage('images/google.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 195,
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                )
                            )
                        ),
                        child: Image(
                          image: AssetImage('images/facebook.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                bottom: 90,
                left: 50,
            ),
            Positioned(
              child: SizedBox(
                width: 400,
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Sign in with Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                    )
                  ),
                  style: TextStyle(
                    color: Colors.black
                  ),
                ),
              ),
              bottom: 150,
              left: 50,
            ),
            Positioned(
                child: Text('New here? Sign up',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              bottom: 50,
              left: 180,
            )
          ],
        ),
      ),
    );
  }
}
