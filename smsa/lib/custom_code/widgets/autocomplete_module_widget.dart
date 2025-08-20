// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!


//
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/services.dart';

class AutocompleteModuleWidget extends StatefulWidget {
  const AutocompleteModuleWidget({
    super.key,
    this.width,
    this.height,
    this.listOfStrings,
    this.onchanged,
    this.hintText,
    this.clearTrigger = false,
  });

  final double? width;
  final double? height;
  final String? hintText;
  final List<String>? listOfStrings;
  final Future Function(String? text, int? index)? onchanged;
  final bool clearTrigger;

  @override
  State<AutocompleteModuleWidget> createState() =>
      _AutocompleteModuleWidgetState();
}

class _AutocompleteModuleWidgetState extends State<AutocompleteModuleWidget> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  final GlobalKey _textFieldKey = GlobalKey();

  // Highlight & options state
  int highlightedIndex = 0;
  bool firstOpen = true;
  final ScrollController _scrollController = ScrollController();
  final double _itemHeight = 48.0;

  // Keep the currently visible (filtered) options and the latest onSelected callback.
  // These are populated inside optionsViewBuilder so field's key handling can use them.
  List<String> _visibleOptions = [];
  void Function(String)? _latestOnSelected;

  @override
  void initState() {
    super.initState();
    // _controller = TextEditingController(text: FFAppState().ifscCode);
    _focusNode = FocusNode();
  }

  @override
  void didUpdateWidget(covariant AutocompleteModuleWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    // 🔹 Clear text when clearTrigger changes from false → true
    if (widget.clearTrigger && !oldWidget.clearTrigger) {
      _controller.clear();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToHighlighted() {
    if (!_scrollController.hasClients) return;
    final target = (highlightedIndex * _itemHeight)
        .clamp(0.0, _scrollController.position.maxScrollExtent);
    try {
      _scrollController.animateTo(
        target,
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeInOut,
      );
    } catch (_) {
      // ignore animate errors during teardown
    }
  }

  bool _listEquals(List<String> a, List<String> b) {
    if (a.length != b.length) return false;
    for (var i = 0; i < a.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? 300,
      // Wrap the whole Autocomplete so the Focus on the TextField can capture keys via onKey below
      child: Autocomplete<String>(
        //initialValue: TextEditingValue(text: FFAppState().ifscCode),
        optionsBuilder: (textEditingValue) {
          if (widget.listOfStrings == null)
            return const Iterable<String>.empty();
          final results = widget.listOfStrings!.where((option) => option
              .toLowerCase()
              .contains(textEditingValue.text.toLowerCase()));
          return results;
        },
        optionsViewBuilder: (context, onSelected, options) {
          // Convert options to concrete list for indexing & scrolling
          final optList = options.toList();

          // store the currently visible options and onSelected for field key handling
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (!mounted) return;
            final changed = _visibleOptions.length != optList.length ||
                !_listEquals(_visibleOptions, optList) ||
                _latestOnSelected != onSelected;
            if (changed) {
              setState(() {
                _visibleOptions = optList;
                _latestOnSelected = onSelected;
                if (firstOpen) {
                  highlightedIndex = 0;
                  firstOpen = false;
                }
                if (highlightedIndex >= _visibleOptions.length) {
                  highlightedIndex = 0;
                }
              });
              // make sure highlighted item is visible
              _scrollToHighlighted();
            }
          });

          final width = widget.width ?? 300;
          const maxHeight = 200.0;
          final actualHeight =
              (optList.length * _itemHeight).clamp(0, maxHeight).toDouble();

          return Align(
            alignment: Alignment.topLeft,
            child: Material(
              elevation: 4,
              child: Container(
                width: width,
                constraints: BoxConstraints(maxHeight: actualHeight),
                color: Color(0xfff7fafc),
                child: ListView.builder(
                  controller: _scrollController,
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: optList.length,
                  itemExtent: _itemHeight,
                  itemBuilder: (context, index) {
                    final option = optList[index];
                    final isHighlighted = index == highlightedIndex;
                    return InkWell(
                      onTap: () {
                        onSelected(option);
                      },
                      child: Container(
                        color: isHighlighted
                            ? FlutterFlowTheme.of(context)
                                .primary
                                .withOpacity(0.2)
                            : Colors.transparent,
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          option,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: FlutterFlowTheme.of(context).bodyMedium,
                                color: Color(0xEB041629),
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
        onSelected: (String selection) async {
          // Called by Autocomplete when an option is selected via onSelected callback from optionsViewBuilder
          _controller.text = selection;
          //FFAppState().ifscCode = selection;
          // _focusNode.unfocus();
          firstOpen = true; // reset so next open highlights first item

          if (widget.onchanged != null) {
            final index = widget.listOfStrings?.indexOf(selection) ?? -1;
            await widget.onchanged!(selection, index);
          }
        },
        fieldViewBuilder:
            (context, textEditingController, focusNode, onEditingComplete) {
          // keep same controller & focus node as before
          _controller = textEditingController;
          _focusNode = focusNode;

          // Wrap the TextFormField in a Focus widget to capture keys while the field is focused
          return Focus(
            focusNode: FocusNode(
                skipTraversal: true), //Skip this wrapper in Tab order,
            onKey: (FocusNode node, RawKeyEvent event) {
              if (event is RawKeyDownEvent) {
                if (event.logicalKey == LogicalKeyboardKey.tab) {
                  // Manually move focus to next field when Tab pressed
                  FocusScope.of(context).nextFocus();
                  return KeyEventResult.handled; // We handled Tab
                }

                // Down arrow
                if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
                  if (_visibleOptions.isNotEmpty) {
                    setState(() {
                      highlightedIndex = highlightedIndex < 0
                          ? 0
                          : (highlightedIndex + 1) % _visibleOptions.length;
                    });
                    _scrollToHighlighted();
                    return KeyEventResult.handled;
                  }
                }

                // Up arrow
                if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
                  if (_visibleOptions.isNotEmpty) {
                    setState(() {
                      highlightedIndex = highlightedIndex < 0
                          ? _visibleOptions.length - 1
                          : (highlightedIndex - 1 + _visibleOptions.length) %
                              _visibleOptions.length;
                    });
                    _scrollToHighlighted();
                    return KeyEventResult.handled;
                  }
                }

                // Enter or Numpad Enter
                if (event.logicalKey == LogicalKeyboardKey.enter ||
                    event.logicalKey == LogicalKeyboardKey.numpadEnter) {
                  if (_visibleOptions.isNotEmpty &&
                      highlightedIndex >= 0 &&
                      highlightedIndex < _visibleOptions.length) {
                    final selected = _visibleOptions[highlightedIndex];
                    if (_latestOnSelected != null) {
                      _latestOnSelected!(selected);
                    }
                    return KeyEventResult.handled;
                  }
                }
              }
              return KeyEventResult.ignored;
            },
            child: TextFormField(
              key: _textFieldKey,
              controller: _controller,
              focusNode: focusNode,
              onEditingComplete: onEditingComplete,
              onChanged: (_) => EasyDebounce.debounce(
                '_ifsc_debounce',
                const Duration(milliseconds: 500),
                () async {
                  final value = _controller.text;
                  //
                  //FFAppState().ifscCode = value;
                  if (widget.onchanged != null) {
                    final index = widget.listOfStrings?.indexOf(value) ?? -1;
                    await widget.onchanged!(value, index);
                  }
                },
              ),
              decoration: InputDecoration(
                isDense: true,
                hintText: widget.hintText,
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Mulish',
                      color: Color(0xEB041629),
                      fontSize: 12.0,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).labelMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelMedium.fontStyle,
                      lineHeight: 1.2,
                    ),

                // FlutterFlowTheme.of(context).labelMedium.override(
                //       font: GoogleFonts.mulish(
                //         fontWeight:
                //             FlutterFlowTheme.of(context).labelMedium.fontWeight,
                //         fontStyle:
                //             FlutterFlowTheme.of(context).labelMedium.fontStyle,
                //       ),
                //       color: Color(0xEB041629),
                //       letterSpacing: 0.0,
                //       fontWeight:
                //           FlutterFlowTheme.of(context).labelMedium.fontWeight,
                //       fontStyle:
                //           FlutterFlowTheme.of(context).labelMedium.fontStyle,
                //       lineHeight: 1.2,
                //     ),

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFCBD5E0),
                    width: 1.2,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1.2,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.2,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.2,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                // fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                fillColor: Color(0xfff7fafc),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Mulish',
                    color: Color(0xEB041629),
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    lineHeight: 1.2,
                  ),

              // FlutterFlowTheme.of(context).bodyMedium.override(
              //       font: GoogleFonts.mulish(
              //         fontWeight:
              //             FlutterFlowTheme.of(context).bodyMedium.fontWeight,
              //         fontStyle:
              //             FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              //       ),
              //       color: Color(0xEB041629),
              //       fontSize: 16.0,
              //       letterSpacing: 0.0,
              //       fontWeight:
              //           FlutterFlowTheme.of(context).bodyMedium.fontWeight,
              //       fontStyle:
              //           FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              //       lineHeight: 1.2,
              //     ),
              cursorColor: Color(0xEB041629),
            ),
          );
        },
      ),
    );
  }
}
