

// import 'dart:convert';
import 'package:flutter_getx_lab/app/constants/app_assets.dart';
import 'package:flutter_getx_lab/app/data/models/Patisserie.dart';
import 'package:get/get.dart';

//https://gist.githubusercontent.com/prayagKhanal/8cdd00d762c48b84a911eca2e2eb3449/raw/5c5d62797752116799aacaeeef08ea2d613569e9/cakes.json


class HomeScreenController  extends GetxController{


  //liste des patisserie
  final RxList<Patisserie> patisseries = RxList<Patisserie>([]);

  final RxBool loading = false.obs;

  final RxString failure = "".obs;

  @override
  void onInit() async{
    // TODO: implement onInit
    super.onInit();
    await fetchPatisseries();
  }

  Future<void> fetchPatisseries()async{
    loading.value = true;
    failure.value = "";
    try{
      await Future.delayed(Duration(seconds: 2));

      final List<Map<String, dynamic>> patisseriesData = [
        {
          "nom": "Tarte aux fraises",
          "ingredients": ["fraises", "pâte brisée", "crème pâtissière", "sucre"],
          "prix": 3600,
          "quantite_disponible": 5,
          "imageUrl": AppAssets.pImage06,  // Ici, tu passes la valeur Dart
        },
        {
          "nom": "Choux à la crème",
          "ingredients": ["pâte à choux", "crème vanille", "chocolat"],
          "prix": 1500,
          "quantite_disponible": 15,
          "imageUrl": AppAssets.pImage05,
        },
        {
          "nom": "Macarons",
          "ingredients": ["amandes", "sucre glace", "blancs d'œufs", "arômes"],
          "prix": 10000,
          "quantite_disponible": 20,
          "imageUrl": AppAssets.pImage010,
        },
      ];


      // List<dynamic> parsedList = jsonDecode(patisseriesData);
      // patisseries.value = parsedList.map((json) => Patisserie.fromJson(json)).toList();


      patisseries.value = patisseriesData.map((json) => Patisserie.fromJson(json)).toList();
      patisseries.refresh();

      // for (var p in patisseries) {
      //   print('${p.nom} - ${p.prix}€ (${p.quantiteDisponible} en stock)');
      // }
    }on FormatException catch(_){
      failure.value = "la converstion des données a echoué ";
    }catch(e){
      failure.value = "Une une c'est produite lors de recuperation des données ";
    }
    finally{
      loading.value = false;
    }
  }

}