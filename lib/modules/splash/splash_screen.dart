import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/splash/splash_controller.dart';
import 'package:flutter_application_1/utils/constant.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}



class SplashScreenState extends State<SplashScreen> {

  final SplashController _splashController = Get.find();

  @override
  void initState() {
    
    super.initState();
    _splashController.next_activity();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //appBar: ,
      body: Stack(
        children: [
          ///gambar
          Positioned(child: CachedNetworkImage(
            imageUrl: 'https://marketplace.canva.com/EAFCO6pfthY/1/0/1600w/canva-blue-green-watercolor-linktree-background-F2CyNS5sQdM.jpg',
            errorWidget: (context, url, error) => const Icon(Icons.error),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
                cacheManager: CacheManager(Config(
                  "imageCache",
                  stalePeriod: const Duration(days: 3),
                ))),

                ///teks
          ),

        Positioned(
          bottom: 10,
          right: 20,
          child: Text(
            'version 1.0.0',
            style: styleSemiTitle.copyWith(
              fontSize: setFontSize(40),
            ),
          ),
          ),
          
 
        ],
      ),
    );
  }
}