import 'asset.dart';
import 'thing.dart';

abstract class TangibleAsset extends Asset implements Thing {
  int price;
  String color;
  double _weight;

  @override
  double get weight {
    return _weight;
  }

  @override
  set weight(double weight) {
    _weight = weight;
  }

  TangibleAsset({
    required super.name,
    required this.price,
    required this.color,
    required double weight
  }) : _weight = weight;
}