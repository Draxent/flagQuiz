import 'package:flutter/material.dart';

import 'assets.dart';
import 'countries.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Center(
        child: SizedBox(
          width: 500,
          child: Column(
            children: [
              Question(answer: CountryCode.values.first),
              Expanded(
                child: ListView.builder(
                  itemCount: CountryCode.values.length,
                  itemBuilder: (_, index) => ListTile(
                    leading: Images.flag(CountryCode.values[index].name),
                    title: Text(CountryCode.values[index].countryName),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
