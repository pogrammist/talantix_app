import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:talantix_app/domain/model/quote.dart';
import 'package:talantix_app/domain/repository/quotes_repository.dart';

part 'home_state.g.dart';

class HomeState = HomeStateBase with _$HomeState;

abstract class HomeStateBase with Store {
  HomeStateBase(this._quotesRepository);

  final QuotesRepository _quotesRepository;

  @observable
  TextEditingController codeController = TextEditingController();

  @observable
  ObservableList quotes = ObservableList();

  @observable
  bool isLoading = false;

  @action
  Future<void> getQuotes() async {
    if (!isLoading) {
      isLoading = true;
      try {
        quotes = ObservableList.of(await _quotesRepository.getQuotes());
      } catch (err) {
        print(err);
      }
      isLoading = false;
    }
  }

  @action
  Future<String> getBtcUsdtLastPrice() async {
    await getQuotes();
    Quote btcUsdt = quotes.firstWhere((quote) => quote.symbol == "BTCUSDT");
    return btcUsdt.lastPrice;
  }
}
