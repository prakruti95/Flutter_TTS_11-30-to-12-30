import 'dart:collection';

import 'package:flutter/material.dart';
const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
class DropDownEx extends StatefulWidget
{
  const DropDownEx({super.key});

  @override
  State<DropDownEx> createState() => _DropDownExState();
}

typedef MenuEntry = DropdownMenuEntry<String>;
class _DropDownExState extends State<DropDownEx>
{
  String dropdownValue = list.first;
  static final List<MenuEntry> menuEntries = UnmodifiableListView<MenuEntry>(
    list.map<MenuEntry>((String name) => MenuEntry(value: name, label: name)),
  );
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("DropDown"),),
        body: Center
          (
            child: Column
              (
                children:
                [
                    DropdownMenu<String>
                  (
                    initialSelection: list.first,
                  onSelected: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  dropdownMenuEntries: menuEntries,
                 )

                ],
              ),
          ),
      );
  }
}
