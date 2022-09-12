import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/instance_manager.dart';




class Controller extends GetxController {
  var count = 0;
  void 
  
  increment() {
    count++;
    update();
  }
}






class SampleBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Controller>(() => Controller());
     }
}