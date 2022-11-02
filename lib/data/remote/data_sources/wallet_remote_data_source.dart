import 'dart:convert';

import 'package:fintech/data/remote/models/card_model.dart';
import 'package:fintech/data/remote/models/spending_model.dart';
import 'package:fintech/presentation/manager/assets/assets.gen.dart';
import 'package:flutter/services.dart';

class WalletRemoteDataSource {
  Future<List<CardModel>> getCards() async {
    try {
      var result = await rootBundle.loadString(Assets.json.card);
      return List<CardModel>.from(json.decode(result).map((dynamic i) => CardModel.fromJson(i as Map<String, dynamic>)).toList());
    } catch (error) {
      throw error.toString();
    }
  }

  Future<SpendingModel> getSpending() async {
    try {
      var result = await rootBundle.loadString(Assets.json.spending);
      return SpendingModel.fromJson(json.decode(result));
    } catch (error) {
      throw error.toString();
    }
  }
}
