import 'package:flutter/material.dart';
import 'package:flutter_getx_lab/app/data/models/Patisserie.dart';
import 'package:flutter_getx_lab/app/modules/home/controllers/home_screen_controller.dart';
import 'package:flutter_getx_lab/app/widgets/cards/cake_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: controller.fetchPatisseries,
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Patisserie",
                      style: TextStyle(fontSize: 25.w, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "decouvrer nos patisseries",
                      style: TextStyle(fontSize: 12.w, fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(height: 20),
                    Obx(
                      () {
                        if(controller.loading.value){
                          return Center(child: const CircularProgressIndicator());
                        }
                        if(controller.failure.value.isNotEmpty){
                          return Center(
                            child: Column(
                              children: [
                                Text("Erreur de recuperation des patisserie",style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: Colors.redAccent,                              
                                ),),
                                Text(controller.failure.value,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Colors.red,                              
                                ),),
                                const SizedBox(
                                  height: 8,
                                ),
                                ElevatedButton(onPressed: ()async{
                                  await controller.fetchPatisseries();
                                }, child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "refresh",
                                      style:Theme.of(context).textTheme.bodySmall!.copyWith()
                                    ),
                                    const SizedBox(width: 8,),
                                    Icon(Icons.refresh),
                                  ],
                                ))
                              ],
                            ),
                          );
                        }
                        return SizedBox(
                          height: 200.h,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.patisseries.length,
                            separatorBuilder: (context, _) {
                              return const SizedBox(width: 6);
                            },
                            itemBuilder: (context, index){
                              return SizedBox(
                                width: 150.w,
                                child: AspectRatio(
                                  aspectRatio: 2 / 3.sp,
                                  child: CakeCard(patisserie: controller.patisseries[index]),
                                ),
                              );
                            },
                          ),
                        );
                      } 
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

}
