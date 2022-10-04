import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:template_skeleton/flutter_map_geojson/geojson2widget/polygon/index.dart';
import 'package:template_skeleton/flutter_map_geojson/geojson2widget/polygon/properties.dart';

class FileGeoJSONPolygon extends StatelessWidget {
  const FileGeoJSONPolygon({
    Key? key,
    required MapController mapController,
  })  : _mapController = mapController,
        super(key: key);

  final MapController _mapController;

  @override
  Widget build(BuildContext context) {
    return GeoJSONPolygons.file(
      "/storage/emulated/0/Android/data/com.ymrabtiapps.gisflutter/files/geojson.json",
      layerProperties: {
        LayerPolygonIndexes.fillColor: 'COLOR_BIO',
        LayerPolygonIndexes.label: 'NAME_BIO',
      },
      polygonLayerProperties: const PolygonProperties(
        isDotted: false,
        rotateLabel: true,
        label: 'File',
        fillColor: Color(0xFF7F0573),
        labelStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(blurRadius: 10, color: Colors.black),
          ],
        ),
        labeled: true,
      ),
      mapController: _mapController,
    );
  }
}