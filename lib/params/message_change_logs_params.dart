import 'package:json_annotation/json_annotation.dart';

part 'message_change_logs_params.g.dart';

/// An object consists a set of parameters to retrieve message's change log
@JsonSerializable()
class MessageChangeLogParams {
  /// Determines whether to include the metaarray information of the
  /// messages in the results. default value is false
  @JsonKey(name: 'with_sorted_meta_array')
  bool includeMetaArray = false;

  /// Determines whether to include the reactions to the messages
  /// in the results. default value is false
  @JsonKey(name: 'include_reactions')
  bool includeReactions = false;

  /// Determines whether to include the parent message text in the results
  /// when the messages are replies in a thread. If the type of the parent
  /// message is `UserMessage` the  value is a `message`. If it is
  /// `FileMessage`, the value is the `name` of the uploaded file.
  /// default value is false
  @JsonKey(name: 'include_parent_message_text')
  bool includeParentMessageText = false;

  /// Determines whether to include the reactions to the messages in the results.
  /// default value is false
  @JsonKey(name: 'include_replies')
  bool includeReplies = false;

  /// Determines whether to include the thread information of the messages
  /// in the results when the results contain root messages. default value is false
  @JsonKey(name: 'include_thread_info')
  bool includeThreadInfo = false;

  Map<String, dynamic> toJson() => _$MessageChangeLogParamsToJson(this);
}
