import 'package:mobx/mobx.dart';
import 'package:observable_list/app/models/item_model.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  String filterTitle = '';

  @observable
  ObservableList<ItemModel> listItems = [
    ItemModel(title: "Item 1", check: true),
    ItemModel(title: "Item 2", check: false),
    ItemModel(title: "Item 3", check: false),
  ].asObservable();

  @computed
  int get totalCehcked => listItems.where((element) => element.check).length;

  @computed
  List<ItemModel> get listWithWhere => filterTitle.isEmpty
      ? listItems
      : listItems
          .where((element) =>
              element.title.toLowerCase().contains(filterTitle.toLowerCase()))
          .toList();

  @action
  addItem(ItemModel model) => listItems.add(model);

  @action
  setFilter(String value) => filterTitle = value;

  @action
  removeItem(ItemModel model) =>
      () => listItems.removeWhere((item) => item.title == model.title);
}
