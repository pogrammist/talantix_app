import 'package:flutter/material.dart';
import 'package:talantix_app/domain/state/home_state.dart';
import 'package:talantix_app/internal/dependencies/home_module.dart';

class CustomButton extends StatefulWidget {
  CustomButton({Key key}) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  HomeState _homeState;
  String _btcUsdtLastPrice;

  @override
  void initState() {
    super.initState();
    _homeState = HomeModule.homeState();
  }

  Future<void> _onPressButton() async {
    if (_btcUsdtLastPrice == null) {
      final lastPrice = await _homeState.getBtcUsdtLastPrice();
      setState(() => _btcUsdtLastPrice = lastPrice);
      return;
    }
    setState(() => _btcUsdtLastPrice = null);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _onPressButton,
      child: Text(_btcUsdtLastPrice ?? 'Press Me'),
      style: ElevatedButton.styleFrom(
        primary: Colors.blueGrey,
        onPrimary: Colors.white,
        padding: EdgeInsets.all(10),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
}
