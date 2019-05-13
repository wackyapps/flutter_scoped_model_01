import 'package:flutter/material.dart';
import 'package:scoped_model_onboarding/donationModelScreen.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_onboarding/model/donationModel.dart';

void main() => runApp(MyApp());

DonationModel donationModel = DonationModel();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<DonationModel>(
      model: donationModel,
      child: MaterialApp(
        title: 'Flutter Scoped_Model Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DonationModelScreen(),
      ),
    );
    ;
  }
}
