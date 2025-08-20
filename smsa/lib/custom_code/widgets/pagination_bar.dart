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

class PaginationBar extends StatefulWidget {
  const PaginationBar({
    super.key,
    this.width,
    this.height,
    this.currentPage,
    this.totalPages,
    this.onPageSelected,
  });

  final double? width;
  final double? height;
  final int? currentPage;
  final int? totalPages;
  final Future Function(int? selectedPage)? onPageSelected;

  @override
  State<PaginationBar> createState() => _PaginationBarState();
}

class _PaginationBarState extends State<PaginationBar> {
  late int _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPage = widget.currentPage!;
  }

  /// Updates current page and optionally calls the API callback
  void _selectPage(int page, {bool triggerCallback = true}) {
    if (page < 1 || page > widget.totalPages!) return;

    setState(() {
      _currentPage = page;
    });

    if (triggerCallback) {
      widget.onPageSelected!(page); // Only call when page number is clicked
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pageButtons = [];

    // First & Previous (UI-only update)
    pageButtons.add(IconButton(
      icon: const Icon(Icons.first_page, color: Colors.orange),
      onPressed: _currentPage > 1
          ? () => _selectPage(1, triggerCallback: false)
          : null,
    ));
    pageButtons.add(IconButton(
      icon: const Icon(Icons.chevron_left, color: Colors.orange),
      onPressed: _currentPage > 1
          ? () => _selectPage(_currentPage - 1, triggerCallback: false)
          : null,
    ));

    // Page number range (highlight current, only these call API)
    int start = (_currentPage - 2).clamp(1, widget.totalPages! - 4);
    int end = (start + 4).clamp(1, widget.totalPages!);

    for (int i = start; i <= end; i++) {
      pageButtons.add(TextButton(
        onPressed: () => _selectPage(i, triggerCallback: true), // ✅ API call
        child: Text(
          '$i',
          style: TextStyle(
            color: i == _currentPage ? Colors.orangeAccent : Colors.orange,
            fontWeight: i == _currentPage ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ));
    }

    // Next & Last (UI-only update)
    pageButtons.add(IconButton(
      icon: const Icon(Icons.chevron_right, color: Colors.orange),
      onPressed: _currentPage < widget.totalPages!
          ? () => _selectPage(_currentPage + 1, triggerCallback: false)
          : null,
    ));
    pageButtons.add(IconButton(
      icon: const Icon(Icons.last_page, color: Colors.orange),
      onPressed: _currentPage < widget.totalPages!
          ? () => _selectPage(widget.totalPages!, triggerCallback: false)
          : null,
    ));

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: pageButtons,
    );
  }
}
