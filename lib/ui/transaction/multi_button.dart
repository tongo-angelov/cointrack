import 'package:flutter/material.dart';

class MultiButton extends StatefulWidget {
  final String defaultValue;
  final Map<dynamic, String> values;
  final Function onChanged;
  final bool enabled;
  MultiButton(
      {required this.defaultValue,
      required this.values,
      required this.onChanged,
      this.enabled = true});
  @override
  _MultiButtonState createState() => _MultiButtonState(
      defaultValue: defaultValue,
      values: values,
      onChanged: onChanged,
      enabled: enabled);
}

class _MultiButtonState extends State<MultiButton> {
  String defaultValue;
  final Map<dynamic, String> values;
  final Function onChanged;
  final bool enabled;
  _MultiButtonState(
      {required this.defaultValue,
      required this.values,
      required this.onChanged,
      this.enabled = true});

  Color? getButtonColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.disabled
    };
    if (states.any(interactiveStates.contains)) {
      return Theme.of(context).colorScheme.primary;
    }
    return Theme.of(context).colorScheme.onSurface.withOpacity(0.08);
  }

  Color? getButtonTextColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.disabled
    };
    if (states.any(interactiveStates.contains)) {
      return Theme.of(context).colorScheme.onPrimary;
    }
    return Theme.of(context).colorScheme.onPrimary.withOpacity(0.4);
  }

  RoundedRectangleBorder getFirstButtonShape() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          bottomLeft: Radius.circular(12),
          topRight: Radius.zero,
          bottomRight: Radius.zero),
    );
  }

  RoundedRectangleBorder getMiddleButtonShape() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.zero,
          bottomLeft: Radius.zero,
          topRight: Radius.zero,
          bottomRight: Radius.zero),
    );
  }

  RoundedRectangleBorder getLastButtonShape() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(12),
          bottomRight: Radius.circular(12),
          topLeft: Radius.zero,
          bottomLeft: Radius.zero),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];

    List<String> strings = values.values.toList();

    strings.forEach((element) {
      children.add(
        Expanded(
          child: ElevatedButton(
              style: ButtonStyle(
                  shape: strings.first == element
                      ? MaterialStateProperty.all<RoundedRectangleBorder>(
                          getFirstButtonShape())
                      : strings.last == element
                          ? MaterialStateProperty.all<RoundedRectangleBorder>(
                              getLastButtonShape())
                          : MaterialStateProperty.all<RoundedRectangleBorder>(
                              getMiddleButtonShape()),
                  backgroundColor:
                      MaterialStateProperty.resolveWith(getButtonColor),
                  foregroundColor:
                      MaterialStateProperty.resolveWith(getButtonTextColor)),
              onPressed: element == defaultValue
                  ? null
                  : () => {
                        if (enabled)
                          {
                            setState(() => {defaultValue = element}),
                            onChanged(values.keys
                                .firstWhere((e) => values[e] == element))
                          }
                      },
              child: Container(
                child: Text(element),
              )),
        ),
      );
    });

    return SizedBox(
      width: double.maxFinite,
      child: Row(children: children),
    );
  }
}
