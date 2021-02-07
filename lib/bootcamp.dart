import 'package:flutter/material.dart';
import 'constants.dart';

class Bootcamp extends StatelessWidget {
  const Bootcamp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "MaGIC Virtual Bootcamps \n",
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
              "MaGIC Virtual Bootcamps are intense outcome-driven workshops for teams of two to build, test, refine their ideas to be launched and find product-market fit. \n"
                  "\n"
                  "These virtual bootcamps are designed based on the government initiatives that coincide with addressing global issues. This includes specific industry players, as their content compliments the bootcamp initiatives and adds more value to the participants.\n"
                  "\n"
                  "Participants will be working with facilitators, coaches and subject-matter experts using our tried-and-tested systematic framework in building a product development plan for a Minimum Viable Product (MVP).",
              style: TextStyle(
                fontSize: 21.0,
              )
          ),
        ),
      ],
    ),
    );
  }
}
