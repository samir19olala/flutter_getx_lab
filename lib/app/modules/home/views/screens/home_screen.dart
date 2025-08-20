
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 2/3.sp,
                      child: _buildCard(context)
                    ),
                  ),
                  const SizedBox(width: 8,),
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 2/3.sp,
                      child: _buildCard(context)
                    ),
                  ),
                ],
              ),
              Text("home"),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildCard(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.1),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.r),
        child: Image.network(
          "https://e7.pngegg.com/pngimages/199/568/png-clipart-milk-cream-dairy-products-food-group-leche-cream-soup-thumbnail.png",
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
          ),
      ),
      
    );
  }
}