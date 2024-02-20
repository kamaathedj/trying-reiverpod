import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rusted_iron_sheets/src/Feature_prisons/Prison.dart';

final prisonsApiProvider = Provider<PrisonService>((ref) => PrisonService());

class PrisonService {
  List<Prison> prisons = List.of([
    Prison('Kamiti', 20000, 'Kiambu county, kenya'),
    Prison('Shimo la tewa', 10000, 'Mombasa county, kenya'),
    Prison('Langata', 5000, 'Nairobi count, kenya'),
    Prison('Industrial area', 8000, 'Nairobi county, kenya'),
    Prison('Kisii gen pop', 6000, 'kisii county, kenya'),
    Prison('fox river', 3000, 'Denver USA')
  ]);

  Future<List<Prison>> getPrisons() {
    return Future.delayed(Durations.extralong2).then((value) => prisons);
  }

  void addPrisons() {
    prisons.add(Prison('another', 100, 'guantanamo bay'));
  }
}
