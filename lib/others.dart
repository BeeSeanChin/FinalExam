import 'package:flutter/material.dart';
import 'constants.dart';

class Others extends StatelessWidget {
  const Others({Key key}) : super(key: key);

  @override
Widget build(BuildContext context) {
    return SingleChildScrollView(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "How to Start a Business: A Step-by-Step Guide \n",
            style: Theme
                .of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
              "1. Refine your idea.\n"
                  "\n"
                  "2. Write a business plan.\n"
                  "\n"
                  "3. Assess your finances.\n"
                  "\n"
                  "4. Determine your legal business structure.\n"
                  "\n"
                  "5. Register with the government and IRS.\n"
                  "\n"
                  "6. Purchase an insurance policy.\n"
                  "\n"
                  "7. Build your team.\n"
                  "\n"
                  "8. Choose your vendors.\n"
                  "\n"
                  "9. Brand yourself and advertise.\n"
                  "\n"
                  "10. Grow your business.\n"
                  "\n",
              style: TextStyle(
                fontSize: 20.0,
              )
          ),
        ),
      ],
    ),
    );
  }
}