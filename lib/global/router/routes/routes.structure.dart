part of 'constants.routes.dart';
class RouteDefinition {
  final String name;
  final String path;
  final String description;

  const RouteDefinition({
    required this.name,
    required this.path,
    required this.description,
  });

  @override
  String toString() => path;
}
