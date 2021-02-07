import 'package:flutter/material.dart';
import 'constants.dart';

class Academy extends StatelessWidget {
  const Academy({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Digital Business Academy \n",
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
              "Learning Modules\n"
                  "\n"
                  "Module 01 - Ideas & Products\n"
                  "Whenever you're wondering whether that 'good idea' could be a great business or trying to create beautiful, engaging products, skills in ideas & products can make the difference for your business prospects and your career in startups.\n"
                  "\n"
                  "Module 02 - Brand & Communication\n"
                  "Groups of 2-3 individuals with ideas or products to launch into the market.\n"
                  "\n"
                  "Module 03 - Marketing & Sales\n"
                  "Groups of 2-3 individuals with ideas or products to launch into the market.\n"
                  "\n"
                  "Module 04 - Operations & Finance\n"
                  "If you are launching a new business or seeking investment, skills in operations & finance could be the difference between quick pitfall and long-term success.\n"
                  "\n"
                  "Module 05 - People\n"
                  "Whatever stage you’re at, your people are one of your most important assets. Knowing how to put together a diverse and inclusive team and help them reach their potential can give you the competitive advantage you need.",

              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              )
          ),
        ),
      ],
    ),
    );
  }
}
