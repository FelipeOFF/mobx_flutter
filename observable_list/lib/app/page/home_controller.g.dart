// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<int> _$totalCehckedComputed;

  @override
  int get totalCehcked =>
      (_$totalCehckedComputed ??= Computed<int>(() => super.totalCehcked))
          .value;
  Computed<List<ItemModel>> _$listWithWhereComputed;

  @override
  List<ItemModel> get listWithWhere => (_$listWithWhereComputed ??=
          Computed<List<ItemModel>>(() => super.listWithWhere))
      .value;

  final _$filterTitleAtom = Atom(name: '_HomeControllerBase.filterTitle');

  @override
  String get filterTitle {
    _$filterTitleAtom.context.enforceReadPolicy(_$filterTitleAtom);
    _$filterTitleAtom.reportObserved();
    return super.filterTitle;
  }

  @override
  set filterTitle(String value) {
    _$filterTitleAtom.context.conditionallyRunInAction(() {
      super.filterTitle = value;
      _$filterTitleAtom.reportChanged();
    }, _$filterTitleAtom, name: '${_$filterTitleAtom.name}_set');
  }

  final _$listItemsAtom = Atom(name: '_HomeControllerBase.listItems');

  @override
  ObservableList<ItemModel> get listItems {
    _$listItemsAtom.context.enforceReadPolicy(_$listItemsAtom);
    _$listItemsAtom.reportObserved();
    return super.listItems;
  }

  @override
  set listItems(ObservableList<ItemModel> value) {
    _$listItemsAtom.context.conditionallyRunInAction(() {
      super.listItems = value;
      _$listItemsAtom.reportChanged();
    }, _$listItemsAtom, name: '${_$listItemsAtom.name}_set');
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic addItem(ItemModel model) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.addItem(model);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setFilter(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.setFilter(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeItem(ItemModel model) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.removeItem(model);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'filterTitle: ${filterTitle.toString()},listItems: ${listItems.toString()},totalCehcked: ${totalCehcked.toString()},listWithWhere: ${listWithWhere.toString()}';
    return '{$string}';
  }
}
