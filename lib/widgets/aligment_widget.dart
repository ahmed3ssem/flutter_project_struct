import 'package:flutter/cupertino.dart';
import 'package:flutter_project_struct/core/utils/app_strings.dart';
import 'package:flutter_project_struct/core/utils/helper.dart';

abstract class AlignmentType{

  Alignment returnAlignment();

}

class AlignmentWidget extends AlignmentType{
  @override
   Alignment returnAlignment() {
    if(Helper.getCurrentLocal()==AppStrings.arCountryCode){
      return Alignment.topRight;
    } else {
      return Alignment.topLeft;
    }
  }

}