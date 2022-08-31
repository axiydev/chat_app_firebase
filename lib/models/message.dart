// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'message.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'message.g.dart';

@freezed
class MessageModel with _$MessageModel {
  const factory MessageModel({
    required String createdAt,
    required String idUser,
    required String urlAvatar,
    required String message,
    required String userName,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, Object?> json) =>
      _$MessageModelFromJson(json);
}