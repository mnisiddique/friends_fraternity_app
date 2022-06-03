import 'dart:convert';

import 'package:friends_fraternity_app/domain/export_entity.dart';

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
