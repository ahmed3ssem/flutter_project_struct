import 'package:flutter/material.dart';
import 'package:flutter_project_struct/core/utils/assets_manager.dart';
import 'package:flutter_project_struct/core/utils/size_utils.dart';
import 'package:get/get.dart';

import '../core/utils/app_colors.dart';

class EmptyDataWidget extends StatelessWidget {
  const EmptyDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AssetsManager.noDataImage , width: 80.h,height: 80.v,),
          Text('noData'.tr , style: TextStyle(fontSize: 20.fSize , color: AppColors.grey , fontWeight: FontWeight.w600),)
        ],
      ),
    );
  }
}
