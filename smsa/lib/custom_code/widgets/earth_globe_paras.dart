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

import 'dart:convert';
import 'package:flutter_earth_globe/flutter_earth_globe.dart';
import 'package:flutter_earth_globe/flutter_earth_globe_controller.dart';
import 'package:flutter_earth_globe/globe_coordinates.dart';
import 'package:flutter_earth_globe/point.dart';
import 'package:flutter/foundation.dart';

class EarthGlobeParas extends StatefulWidget {
  const EarthGlobeParas({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<EarthGlobeParas> createState() => _EarthGlobeParasState();
}

class _EarthGlobeParasState extends State<EarthGlobeParas> {
  late FlutterEarthGlobeController _controller;
  List<Point> _points = [];
  Brightness? _currentBrightness;

  /// ✅ Dummy sample data
  final List<Map<String, dynamic>> defaultData = [
    {
      "countryCode": "AE",
      "countryName": "Dubai",
      "latitude": 25.276987,
      "longitude": 55.296249,
      "sentPayments": 576,
      "receivedPayments": 1579
    },
    {
      "countryCode": "IN",
      "countryName": "India",
      "latitude": 20.5937,
      "longitude": 78.9629,
      "sentPayments": 16,
      "receivedPayments": 301
    },
    {
      "countryCode": "BH",
      "countryName": "Bahrain",
      "latitude": 26.0667,
      "longitude": 50.5577,
      "sentPayments": 2,
      "receivedPayments": 12
    },
    {
      "countryCode": "HK",
      "countryName": "Hong Kong",
      "latitude": 22.3193,
      "longitude": 114.1694,
      "sentPayments": 0,
      "receivedPayments": 8
    },
    {
      "countryCode": "SG",
      "countryName": "Singapore",
      "latitude": 1.3521,
      "longitude": 103.8198,
      "sentPayments": 0,
      "receivedPayments": 6
    },
  ];

  @override
  void initState() {
    super.initState();
    _controller = FlutterEarthGlobeController();
    _loadPoints();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final brightness = Theme.of(context).brightness;
    if (_currentBrightness != brightness) {
      _currentBrightness = brightness;
      final surfaceImage = _getSurfaceImage();
      _initController(surfaceImage);
    }
  }

  void _loadPoints() {
    _points = defaultData.map((entry) {
      final countryCode = entry['countryCode'];
      final countryName = entry['countryName'];
      final lat = entry['latitude'];
      final lng = entry['longitude'];
      final sent = entry['sentPayments'];
      final received = entry['receivedPayments'];

      return Point(
        id: countryCode,
        label: countryName,
        coordinates: GlobeCoordinates(lat, lng),
        style: PointStyle(
          color: Colors.orangeAccent,
          size: 8.0,
        ),
        labelBuilder: (context, point, isHovering, isSelected) {
          return _buildFlagLabel(
              context, countryCode, countryName, sent, received);
        },
      );
    }).toList();
  }

  Widget _buildFlagLabel(
    BuildContext context,
    String code,
    String name,
    int sent,
    int received,
  ) {
    final assetPath = kDebugMode
        ? 'images/${code.toLowerCase()}.png'
        : 'assets/images/${code.toLowerCase()}.png';

    final imageProvider = AssetImage(assetPath);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.7),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(
                image: imageProvider,
                width: 24,
                height: 18,
                errorBuilder: (_, __, ___) => const SizedBox.shrink(),
              ),
              const SizedBox(width: 6),
              Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            'Sent: $sent',
            style: const TextStyle(color: Colors.white70, fontSize: 11),
          ),
          Text(
            'Received: $received',
            style: const TextStyle(color: Colors.white70, fontSize: 11),
          ),
        ],
      ),
    );
  }

  ImageProvider _getSurfaceImage() {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return AssetImage(
      isDark
          ? (kDebugMode
              ? 'images/globe_dark.png'
              : 'assets/images/globe_dark.png')
          : (kDebugMode
              ? 'images/globe_light.png'
              : 'assets/images/globe_light.png'),
    );
  }

  void _initController(ImageProvider surfaceImage) {
    _controller = FlutterEarthGlobeController(
      rotationSpeed: 0.1,
      zoom: 0.6,
      isRotating: true,
      surface: surfaceImage,
    );

    _controller.onLoaded = () {
      for (var point in _points) {
        _controller.addPoint(point);
      }
      _controller.focusOnCoordinates(
        const GlobeCoordinates(20.0, 77.0),
        animate: false,
      );
    };
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? 800,
      height: widget.height ?? 500,
      alignment: Alignment.center,
      child: FlutterEarthGlobe(
        controller: _controller,
        radius: 170,
      ),
    );
  }
}
