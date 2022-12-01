import 'package:flutter/material.dart';
import 'package:kursach/assets/Icons.dart';
import 'package:kursach/assets/colors.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/presentation/auth/auth_personal/auth_personal_body.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({Key? key, this.currentModel}) : super(key: key);
  final UserPersonalDataModel? currentModel;
  static const String route = "/auth/personal";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Spacer(
                flex: 3,
              ),
              Expanded(
                flex: 9,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(15))),
                        child: PersonalInfoBody(
                          model: currentModel,
                        ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
