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

class MyPaginationWidget extends StatefulWidget {
  const MyPaginationWidget({
    super.key,
    this.width,
    this.height,
    required this.listttt,
  });

  final double? width;
  final double? height;
  final Widget Function() listttt;

  @override
  State<MyPaginationWidget> createState() => _MyPaginationWidgetState();
}

class _MyPaginationWidgetState extends State<MyPaginationWidget> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void scrollLeft() async {
    try {
      final current = _scrollController.offset;
      final target = (current - 100).clamp(
        0.0,
        _scrollController.position.maxScrollExtent,
      );

      await _scrollController.animateTo(
        target,
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } catch (e) {}
  }

  void scrollRight() async {
    try {
      final current = _scrollController.offset;
      final max = _scrollController.position.maxScrollExtent;

      final target = (current + 100).clamp(0.0, max);

      await _scrollController.animateTo(
        target,
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } catch (e) {}
  }

  void jumpToStart() async {
    try {
      await _scrollController.animateTo(
        0.0,
        duration: Duration(milliseconds: 400),
        curve: Curves.easeOut,
      );
    } catch (e) {}
  }

  void jumpToEnd() async {
    try {
      await _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: 400),
        curve: Curves.easeOut,
      );
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.first_page,
              color: Color(0xffE3530F)), // ⏮️ Jump to first
          onPressed: jumpToStart,
        ),
        IconButton(
          icon: Icon(Icons.chevron_left,
              color: Color(0xffE3530F)), // ◀️ Scroll left
          onPressed: scrollLeft,
        ),
        Expanded(
          child: SingleChildScrollView(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            child: widget.listttt(),
          ),
        ),
        IconButton(
          icon: Icon(Icons.chevron_right,
              color: Color(0xffE3530F)), // ▶️ Scroll right
          onPressed: scrollRight,
        ),
        IconButton(
          icon: Icon(Icons.last_page,
              color: Color(0xffE3530F)), // ⏭️ Jump to last
          onPressed: jumpToEnd,
        ),
      ],
    );
  }
}
