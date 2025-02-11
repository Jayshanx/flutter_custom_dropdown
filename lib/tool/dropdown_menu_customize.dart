import 'package:flutter/cupertino.dart';

import 'dropdown_common.dart';

typedef BlankMenuItemBuilder<T> = Widget Function(BuildContext context, List<T> data, DropdownMenuController? controller);

///提供空白页面,内容自定义使用
class DropdownMenuCustomize<T> extends DropdownWidget {
  final List<T> data;
  final BlankMenuItemBuilder itemBuilder;

  const DropdownMenuCustomize({Key? key, required this.data, required this.itemBuilder}) : super(key: key);

  @override
  DropdownState<DropdownWidget> createState() {
    // TODO: implement createState
    return _MenuListState<T>();
  }
}

class _MenuListState<T> extends DropdownState<DropdownMenuCustomize<T>> {
  late BlankMenuItemBuilder _itemBuilder;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _itemBuilder = widget.itemBuilder;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _itemBuilder(context, widget.data, controller);
  }

  @override
  void onEvent(DropdownEvent event) {
    // TODO: implement onEvent
    switch (event) {
      case DropdownEvent.select:
      case DropdownEvent.hide:
        {}
        break;
      case DropdownEvent.active:
        {}
        break;
    }
  }
}
