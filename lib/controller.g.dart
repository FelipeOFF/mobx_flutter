// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on ControllerBase, Store {
  Computed<String> _$completNameComputed;

  @override
  String get completName =>
      (_$completNameComputed ??= Computed<String>(() => super.completName))
          .value;

  final _$nameAtom = Atom(name: 'ControllerBase.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$lastnameAtom = Atom(name: 'ControllerBase.lastname');

  @override
  String get lastname {
    _$lastnameAtom.context.enforceReadPolicy(_$lastnameAtom);
    _$lastnameAtom.reportObserved();
    return super.lastname;
  }

  @override
  set lastname(String value) {
    _$lastnameAtom.context.conditionallyRunInAction(() {
      super.lastname = value;
      _$lastnameAtom.reportChanged();
    }, _$lastnameAtom, name: '${_$lastnameAtom.name}_set');
  }

  final _$ControllerBaseActionController =
      ActionController(name: 'ControllerBase');

  @override
  dynamic changeName(String newName) {
    final _$actionInfo = _$ControllerBaseActionController.startAction();
    try {
      return super.changeName(newName);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeLastName(String newLastName) {
    final _$actionInfo = _$ControllerBaseActionController.startAction();
    try {
      return super.changeLastName(newLastName);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'name: ${name.toString()},lastname: ${lastname.toString()},completName: ${completName.toString()}';
    return '{$string}';
  }
}
