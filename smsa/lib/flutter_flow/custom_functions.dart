import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

double convertCount(int number) {
  return number / 10;
}

List<dynamic>? getTopFiveEntries(dynamic jsonMap) {
  // final nestedData = jsonMap['data'] as Map<String, dynamic>?;

  // if (nestedData == null) return [];

  // final Map<String, dynamic> messageCounts = nestedData['data'] ?? {};

  // final topFive = <MapEntry<String, dynamic>>[];
  // int total = 0;
  // int count = 0;

  // for (final entry in messageCounts.entries) {
  //   if (entry.value is! int) continue;

  //   topFive.add(entry);
  //   total += entry.value as int;
  //   count++;

  //   if (count >= 5) break;
  // }

  // // Progress scaling
  // final values = topFive.map((e) => e.value as int).toList();
  // final minValue = values.reduce(math.min);
  // final maxValue = values.reduce(math.max);

  // final result = topFive.map((entry) {
  //   final value = entry.value as int;
  //   final percentage = total == 0 ? 0.0 : (value / total) * 100;
  //   final normalized =
  //       minValue == maxValue ? 1.0 : (value - minValue) / (maxValue - minValue);
  //   final progress = 0.1 + normalized * 0.9;

  //   return {
  //     'key': entry.key,
  //     'value': value,
  //     'percentage': percentage.toStringAsFixed(2),
  //     'progress': double.parse(progress.toStringAsFixed(2)),
  //   };
  // }).toList();

  // return result;
  //

  final nestedData = jsonMap['data'] as Map<String, dynamic>?;

  if (nestedData == null) return [];

  final Map<String, dynamic> messageCounts = nestedData['data'] ?? {};

  // Filter and sort entries by value descending
  final sortedEntries = messageCounts.entries
      .where((e) => e.value is int)
      .toList()
    ..sort((a, b) => (b.value as int).compareTo(a.value as int));

  final topFive = sortedEntries.take(5).toList();
  final others = sortedEntries.skip(5).toList();

  // Sum values
  final topFiveTotal = topFive.fold<int>(0, (sum, e) => sum + (e.value as int));
  final othersTotal = others.fold<int>(0, (sum, e) => sum + (e.value as int));
  final grandTotal = topFiveTotal + othersTotal;

  // Prepare list with top 5 entries first
  final combined = [...topFive];

  if (othersTotal > 0) {
    combined.add(MapEntry("Others", othersTotal));
  }

  // Progress scaling
  final values = combined.map((e) => e.value as int).toList();
  final minValue = values.reduce(math.min);
  final maxValue = values.reduce(math.max);

  final result = combined.map((entry) {
    final value = entry.value as int;
    final percentage = grandTotal == 0 ? 0.0 : (value / grandTotal) * 100;
    final normalized =
        minValue == maxValue ? 1.0 : (value - minValue) / (maxValue - minValue);
    final progress = 0.1 + normalized * 0.9;

    return {
      'key': entry.key,
      'value': value,
      'percentage': percentage.toStringAsFixed(2),
      'progress': double.parse(progress.toStringAsFixed(2)),
    };
  }).toList();

  return result;
}

double? getScaledProgressList(
  String? sent,
  String? received,
) {
  int s = int.tryParse(sent ?? '') ?? 0;
  int r = int.tryParse(received ?? '') ?? 0;
  int total = s + r;

  if (total == 0) return 0.5;

  return s / total;
}

int? pageIndexCalculate(int? pageRow) {
  // divide and return pageRow by 10 value
  if (pageRow == null) return null; // Check for null
  return (pageRow / 10).round(); // Divide by 10 and round the result
}

List<int> calculateTotalPages(
  int? totalCount,
  int? pageSize,
) {
  // return numbers like 1,2,3 based on totalCount and pages
  if (totalCount == null || pageSize == null || pageSize <= 0) {
    return [];
  }

  int totalPages = (totalCount / pageSize).ceil();
  return List<int>.generate(totalPages, (index) => index + 1);
}

List<int> newCustomFunction(int totalElement) {
  // convert totalElement into list of int
  return List<int>.generate(totalElement, (index) => index);
}

List<GetSearchModelStruct>? selectedRowsData(
  List<GetSearchModelStruct>? tableData,
  List<int>? selecteEmpsIndex,
) {
  //
  List<GetSearchModelStruct> promotedEmps = [];
  for (int i = 0; i < selecteEmpsIndex!.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < tableData!.length) {
      GetSearchModelStruct emp = tableData[index];
      promotedEmps.add(emp);
    }
  }
  return promotedEmps;
}

String extractLastLogin(String decryptedJson) {
  try {
    final Map<String, dynamic> data = jsonDecode(decryptedJson);
    print('lastLogin Date: $data');
    return data['lastLogin'] ?? '';
  } catch (e) {
    return '';
  }
}

List<GetSearchModelStruct> sortData(
  List<GetSearchModelStruct> listToSort,
  bool isAsc,
  int sortColumIndex,
) {
  int nullOrEmptySafeCompare<T extends Comparable>(T? a, T? b) {
    final isAEmpty = (a == null || (a is String && a.isEmpty));
    final isBEmpty = (b == null || (b is String && b.isEmpty));

    if (isAEmpty && isBEmpty) return 0;
    if (isAEmpty) return 1;
    if (isBEmpty) return -1;

    return a.compareTo(b);
  }

  switch (sortColumIndex) {
    case 0:
      listToSort
          .sort((a, b) => nullOrEmptySafeCompare(a.senderBic, b.senderBic));
      break;
    case 1:
      listToSort
          .sort((a, b) => nullOrEmptySafeCompare(a.receiverBic, b.receiverBic));
      break;
    case 2:
      listToSort.sort((a, b) => nullOrEmptySafeCompare(a.currency, b.currency));
      break;
    case 3:
      listToSort.sort((a, b) =>
          nullOrEmptySafeCompare(a.transactionAmount, b.transactionAmount));
      break;
    case 4:
      listToSort.sort((a, b) => nullOrEmptySafeCompare(a.inpOut, b.inpOut));
      break;
    case 5:
      listToSort.sort((a, b) => nullOrEmptySafeCompare(a.uetr, b.uetr));
      break;
    case 6:
      listToSort.sort((a, b) => nullOrEmptySafeCompare(
          DateTime.tryParse(a.date ?? ''), DateTime.tryParse(b.date ?? '')));
      break;
    case 7:
      listToSort.sort((a, b) => nullOrEmptySafeCompare(a.fileType, b.fileType));
      break;
    case 8:
      listToSort.sort((a, b) => nullOrEmptySafeCompare(a.msgType, b.msgType));
      break;
    case 9:
      listToSort.sort((a, b) => nullOrEmptySafeCompare(a.userRef, b.userRef));
      break;
    default:
      break;
  }

  if (!isAsc) {
    listToSort = listToSort.reversed.toList();
  }

  return listToSort;
}

String addEmail(String input) {
  if (input.isEmpty) return '';
  if (input.toLowerCase().startsWith('ban')) {
    return '${input.toUpperCase()}@ext.icicibank.com';
  }
  return '${input.toUpperCase()}@icicibank.com';
}

String getColumnNameByIndex(int index) {
  const columnNames = [
    'senderBic',
    'receiverBic',
    'currency',
    'transactionAmount',
    'inpOut',
    'uetr',
    'fileDate',
    'fileType',
    'msgType',
    'userRef',
    'fileName',
    'Details',
  ];

  if (index < 0 || index >= columnNames.length) {
    return 'Invalid Index';
  }

  return columnNames[index];
}

String? newCustomFunction2(
  String selectedGeogName,
  List<dynamic> geogList,
) {
  if (selectedGeogName == null || geogList == null) return '';

  final match = geogList.firstWhere(
    (item) =>
        item != null &&
        item['geogName'] != null &&
        item['geogName'].toString().trim().toLowerCase() ==
            selectedGeogName.trim().toLowerCase(),
    orElse: () => null,
  );

  if (match != null && match['geogId'] != null) {
    return match['geogId'].toString();
  }

  return '';
}

String? getGeogIdFromName(
  List<dynamic>? geographies,
  String? selectedName,
) {
  for (final item in geographies ?? []) {
    if (item is Map<String, dynamic> && item['geogName'] == selectedName) {
      final geogId = item['geogId'];
      if (geogId is int) {
        return geogId.toString();
      } else if (geogId is String) {
        // In case geogId comes as String, try parsing to int
        return geogId;
      }
    }
  }
  return "issue";
}

String? getModuleIdFromName(
  String selectedModuleName,
  List<dynamic> moduleList,
) {
  final match = moduleList.firstWhere(
    (item) =>
        item != null &&
        item['moduleName'] != null &&
        item['moduleName'].toString().trim().toLowerCase() ==
            selectedModuleName.trim().toLowerCase(),
    orElse: () => null,
  );

  if (match != null && match['moduleId'] != null) {
    return match['moduleId'].toString();
  }

  return '';
}

List<TestDataStruct> dummySort(
  bool isAsc,
  int sortColumIndex,
  List<TestDataStruct> listToSort,
) {
  List<TestDataStruct> sortedList = List.from(listToSort); // ✅ only define once

  switch (sortColumIndex) {
    case 0: // Sort by countryName
      sortedList.sort((a, b) => a.countryName.compareTo(b.countryName));
      break;
    case 1: // Sort by countryCode
      sortedList.sort((a, b) => a.countryCode.compareTo(b.countryCode));
      break;
    case 2: // Sort by sentPayments
      sortedList.sort((a, b) => a.sentPayments.compareTo(b.sentPayments));
      break;
    case 3: // Sort by receivedPayments
      sortedList
          .sort((a, b) => a.receivedPayments.compareTo(b.receivedPayments));
      break;
    default:
      break;
  }

  if (!isAsc) {
    sortedList = sortedList.reversed.toList();
  }

  return sortedList;
}

String? formatDateTime(String? timestamp) {
  try {
    DateTime dt = DateTime.parse(timestamp!);
    return DateFormat('yyyy-MM-dd h:mm a').format(dt);
  } catch (e) {
    return "2025-08-11 10:30 AM"; // fallback if parsing fails
  }
}

String? getPercentage(
  String? total,
  String? sent,
) {
  // calculate total divide by sent and give sent percentage
  if (total?.isEmpty ?? true) {
    return null;
  }

  final totalValue = double.tryParse(total!) ?? 0.0;
  final sentValue = double.tryParse(sent!) ?? 0.0;

  if (totalValue <= 0) return '0%';

  final percentage = (sentValue / totalValue) * 100;

  // Remove .00 if whole number
  return percentage % 1 == 0
      ? '${percentage.toInt()}%'
      : '${percentage.toStringAsFixed(2)}%';
}
