import 'package:firbase_gitx/firebase/user_add/add_user_controller.dart';
import 'package:firbase_gitx/firebase/user_add/widget/common_text_field.dart';
import 'package:flutter/material.dart';

class UserAdd extends StatelessWidget {
  const UserAdd({super.key});

  @override
  Widget build(BuildContext context) {
    AddUserController controller = Get.put(AddUserController());
    return  Scaffold(
      appBar: AppBar(
        title: Text("User Add"),

      ),
      body:  Center(
        child: Column(
          children: [
            CommonTextField(controller: controller.nameController),
            SizedBox(height: 10,),
            CommonTextField(controller: controller.phoneController),
            SizedBox(height: 10),

            Obx(()=>controller.isLoading.isTrue? CommonLoadingButton():CommonButton(buttonName : "Add User",onTap:(){
              controller.addUserFun();
            })),
            SizedBox(height: 100,),
          ],
        ),
      ),
    );
  }
}
