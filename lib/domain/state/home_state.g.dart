// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeState on HomeStateBase, Store {
  final _$codeControllerAtom = Atom(name: 'HomeStateBase.codeController');

  @override
  TextEditingController get codeController {
    _$codeControllerAtom.reportRead();
    return super.codeController;
  }

  @override
  set codeController(TextEditingController value) {
    _$codeControllerAtom.reportWrite(value, super.codeController, () {
      super.codeController = value;
    });
  }

  final _$quotesAtom = Atom(name: 'HomeStateBase.quotes');

  @override
  ObservableList<dynamic> get quotes {
    _$quotesAtom.reportRead();
    return super.quotes;
  }

  @override
  set quotes(ObservableList<dynamic> value) {
    _$quotesAtom.reportWrite(value, super.quotes, () {
      super.quotes = value;
    });
  }

  final _$isLoadingAtom = Atom(name: 'HomeStateBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$getQuotesAsyncAction = AsyncAction('HomeStateBase.getQuotes');

  @override
  Future<void> getQuotes() {
    return _$getQuotesAsyncAction.run(() => super.getQuotes());
  }

  final _$getBtcUsdtLastPriceAsyncAction =
      AsyncAction('HomeStateBase.getBtcUsdtLastPrice');

  @override
  Future<String> getBtcUsdtLastPrice() {
    return _$getBtcUsdtLastPriceAsyncAction
        .run(() => super.getBtcUsdtLastPrice());
  }

  @override
  String toString() {
    return '''
codeController: ${codeController},
quotes: ${quotes},
isLoading: ${isLoading}
    ''';
  }
}
