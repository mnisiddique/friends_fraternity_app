import 'dart:convert';

import 'package:friends_fraternity_app/domain/entity/entity_exporter.dart';

class DepositorshipCancelStatusModel extends DepositorshipCancelStatus {
  DepositorshipCancelStatusModel(bool isCancelled, String message)
      : super(isCancelled, message);

  factory DepositorshipCancelStatusModel.fromJson(String json) {
    final decodedJson = jsonDecode(json);
    return DepositorshipCancelStatusModel(
      decodedJson["isCancelled"],
      decodedJson["message"],
    );
  }
}
