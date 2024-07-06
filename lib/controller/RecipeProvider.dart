import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:re_exam/apiservice/ApiService.dart';
import 'package:re_exam/model/DataModel.dart';

class RecipeProvider extends ChangeNotifier
{
  DataModel? dataModel;
  bool loading=false;
  List <DataModel>cradList = [];
  RecipeProvider()
  {
    FeatchData();
  }

  Future<void> FeatchData()
  async {

    Apiservice apiservice =Apiservice();
    loading=true;
    notifyListeners();
    String? json =await apiservice.apiCalling();
    Map data =jsonDecode(json!);
    print(data);
    dataModel =DataModel.fromJson(data);
    loading=false;
    notifyListeners();


  }



  void addCard( DataModel datalist ) {
    cradList.add(datalist);
    notifyListeners();
  }






}