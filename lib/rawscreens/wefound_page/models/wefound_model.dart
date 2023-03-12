import 'package:get/get.dart';
import 'section_item_model.dart';

class WefoundModel {
  RxList<SectionItemModel> sectionItemList =
      RxList.generate(2, (index) => SectionItemModel());
}
