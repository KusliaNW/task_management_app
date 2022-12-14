import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';
import '../style/AppColors.dart';

class MyFriends extends StatelessWidget {
  const MyFriends({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                    'My Friends', 
                style: TextStyle(
                  color: AppColors.primaryText, 
                  fontSize: 30,
                ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () => Get.toNamed(Routes.FRIENDS),
                  child: Text(
                      'more', 
                  style: TextStyle(
                    color: AppColors.primaryText, 
                    fontSize: 20,
                  ),
                  ),
                ),
                Icon(
                  Icons.arrow_left, 
                color: AppColors.primaryText,
                )
              ],
            ),
            const SizedBox(
            height: 20
            ),
            SizedBox(
              height: 400, 
              child: GridView.builder(
                shrinkWrap: true,
              itemCount: 8,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: context.isPhone ? 2 : 3,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                  child: const Image(
                    image: NetworkImage(
                    'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp%27'),
                  ),
                  ),
                  const Text(
                    'Alicia Jasmin', 
                  style: TextStyle(
                    color: AppColors.
                    primaryText
                    ),
                    ),
                    ],
                  );
                }),
            )
          ],
        ),
      ),
    ),
    );
  }
}

