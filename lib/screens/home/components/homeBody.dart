import 'package:flutter/material.dart';
import 'package:morning_quote/constraints.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';

 Widget fullScreenHeroWidget() => FullScreenWidget(
        child: Hero(
          tag: "customTag",
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              "../assets/images/morning1.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Row(
          children: <Widget>[
            RecomendPlantCard(
              image: "../assets/images/morning1.jpg",
              title: "Samantha",
              press: () {},
            ),
            RecomendPlantCard(
              image: "../assets/images/morning1.jpg",
              title: "Angelica",
              press: () {},
            ),          
            RecomendPlantCard(
              image: "../assets/images/morning1.jpg",
              title: "Samantha",
              press: () {},
            ),
          ],
        ),
      ],
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String image, title;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: defaultPadding,
        top: defaultPadding / 2,
        bottom: defaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(defaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: primaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Share".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                      ],
                    ),
                  ),
                  Spacer(),
                  RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          child: Icon(Icons.share, size: 25),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    ' #morningbless',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: primaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
