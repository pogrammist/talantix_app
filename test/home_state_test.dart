import 'package:talantix_app/internal/dependencies/home_module.dart';
import 'package:test/test.dart';

void main() {
  test('Btc Usdt Last Price is available', () async {
    final _homeState = HomeModule.homeState();

    final isDouble =
        double.parse(await _homeState.getBtcUsdtLastPrice()).runtimeType ==
            double;

    expect(isDouble, true);
  });
}
