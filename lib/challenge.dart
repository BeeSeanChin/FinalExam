import 'package:flutter/material.dart';
import 'constants.dart';

class Challenge extends StatelessWidget {
  const Challenge({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "University Startup Challenge \n",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
              "MaGIC’s University Startup Challenge 2020, a 3-day online startup immersion and pitching competition for students in higher learning across Malaysia. It equips students with entrepreneurial mindset and skills through an intense syllabus that helps them refine, build and showcase their ideas turned prototypes through fundamental workshops, mentoring, sharing sessions and networking opportunities. \n"
                  "\n"
                  "Participants will be working with facilitators, coaches and subject-matter experts using our tried-and-tested systematic framework in building a product development plan for a Minimum Viable Product (MVP).",
              style: TextStyle(
                fontSize: 21.0,
              )
          ),
        ),
      ],
    );
  }
}
