import 'package:scoped_model/scoped_model.dart';

class DonationModel extends Model {
  int _count = 0;
  bool _donateClicked = false;

  get count => _count;

  get donateClicked => _donateClicked;

  set donateClicked(bool donate) {
    if (donate == null) {
      throw new ArgumentError();
    }
    _donateClicked = donate;
    notifyListeners();
  }

  void increment() {
    _count += 10;
    notifyListeners();
  }

  void decrement() {
    if (_count > 0) {
      _count--;
      notifyListeners();
    }
  }
}
