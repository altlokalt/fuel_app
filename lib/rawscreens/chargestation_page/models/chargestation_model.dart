import 'package:get/get.dart';
import 'chargestation_item_model.dart';

class ChargestationModel {
  RxList<ChargestationItemModel> chargestationItemList =
      RxList.generate(4, (index) => ChargestationItemModel());
}
