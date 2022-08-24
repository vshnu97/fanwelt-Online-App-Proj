import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fanwelt/app/model_class/model.dart';

class DataFetch {
  static String url =
      'https://rest.entitysport.com/v2/matches/49689/info?token=ec471071441bb2ac538a0ff901abd249';

  final List<Welcome> dataList = [];

 Future<Welcome?> getAllNotes() async {
   
    try {
       Response response = await Dio().get(url);
  if (response.statusCode! >= 200 || response.statusCode! <= 299) {
    log('Data response is $response');

    return Welcome.fromJson(response.data);
   
    // final datas=result.response.;
    // log(datas.toString());
    // dataList.clear();
    // dataList.add(result);
    // notifyListeners();
  
  }
} catch (e) {
 return Welcome(message: e.toString());
}
    return null;
  }
}
