// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FileMessage _$FileMessageFromJson(Map<String, dynamic> json) {
  return FileMessage(
    url: json['url'] as String,
    name: json['name'] as String?,
    size: json['size'] as int?,
    type: json['type'] as String?,
    thumbnails: (json['thumbnails'] as List<dynamic>?)
        ?.map((e) => Thumbnail.fromJson(e as Map<String, dynamic>))
        .toList(),
    requireAuth: json['require_auth'] as bool? ?? false,
    requestId: json['request_id'] as String?,
    message: json['message'] as String?,
    messageId: json['message_id'] as int? ?? 0,
    sendingStatus: _$enumDecodeNullable(
        _$MessageSendingStatusEnumMap, json['sending_status']),
    sender: json['user'] == null
        ? null
        : Sender.fromJson(json['user'] as Map<String, dynamic>),
    channelUrl: json['channel_url'] as String,
    channelType:
        _$enumDecodeNullable(_$ChannelTypeEnumMap, json['channel_type']) ??
            ChannelType.group,
    mentionedUsers: (json['mentioned_users'] as List<dynamic>?)
            ?.map((e) => User.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    mentionType:
        _$enumDecodeNullable(_$MentionTypeEnumMap, json['mention_type']),
    requestedMentionUserIds:
        (json['requested_mention_user_ids'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList(),
    createdAt: json['created_at'] as int? ?? 0,
    updatedAt: json['updated_at'] as int? ?? 0,
    parentMessageId: json['parent_message_id'] as int?,
    parentMessageText: json['parent_message_text'] as String?,
    threadInfo: json['thread_info'] == null
        ? null
        : ThreadInfo.fromJson(json['thread_info'] as Map<String, dynamic>),
    metaArrays: (json['sorted_metaarray'] as List<dynamic>?)
        ?.map((e) => MessageMetaArray.fromJson(e as Map<String, dynamic>))
        .toList(),
    customType: json['custom_type'] as String?,
    messageSurvivalSeconds: json['message_survival_seconds'] as int? ?? -1,
    forceUpdateLastMessage: json['force_update_last_message'] as bool? ?? false,
    isSilent: json['silent'] as bool? ?? false,
    errorCode: json['error_code'] as int?,
    isOperatorMessage: json['is_op_msg'] as bool? ?? false,
    data: json['data'] as String?,
    ogMetaData: json['og_tag'] == null
        ? null
        : OGMetaData.fromJson(json['og_tag'] as Map<String, dynamic>),
    reactions: (json['reactions'] as List<dynamic>?)
            ?.map((e) => Reaction.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$FileMessageToJson(FileMessage instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'message_id': instance.messageId,
      'message': instance.message,
      'sending_status': _$MessageSendingStatusEnumMap[instance.sendingStatus],
      'user': instance.sender?.toJson(),
      'channel_url': instance.channelUrl,
      'channel_type': _$ChannelTypeEnumMap[instance.channelType],
      'mentioned_users':
          instance.mentionedUsers.map((e) => e.toJson()).toList(),
      'mention_type': _$MentionTypeEnumMap[instance.mentionType],
      'requested_mention_user_ids': instance.requestedMentionUserIds,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'parent_message_id': instance.parentMessageId,
      'parent_message_text': instance.parentMessageText,
      'thread_info': instance.threadInfo?.toJson(),
      'sorted_metaarray': instance.metaArrays?.map((e) => e.toJson()).toList(),
      'custom_type': instance.customType,
      'message_survival_seconds': instance.messageSurvivalSeconds,
      'force_update_last_message': instance.forceUpdateLastMessage,
      'silent': instance.isSilent,
      'error_code': instance.errorCode,
      'is_op_msg': instance.isOperatorMessage,
      'data': instance.data,
      'og_tag': instance.ogMetaData?.toJson(),
      'reactions': instance.reactions?.map((e) => e.toJson()).toList(),
      'url': instance.url,
      'name': instance.name,
      'size': instance.size,
      'type': instance.type,
      'thumbnails': instance.thumbnails?.map((e) => e.toJson()).toList(),
      'require_auth': instance.requireAuth,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$MessageSendingStatusEnumMap = {
  MessageSendingStatus.none: 'none',
  MessageSendingStatus.pending: 'pending',
  MessageSendingStatus.failed: 'failed',
  MessageSendingStatus.succeeded: 'succeeded',
  MessageSendingStatus.canceled: 'canceled',
};

const _$ChannelTypeEnumMap = {
  ChannelType.group: 'group',
  ChannelType.open: 'open',
};

const _$MentionTypeEnumMap = {
  MentionType.users: 'users',
  MentionType.channel: 'channel',
};

Thumbnail _$ThumbnailFromJson(Map<String, dynamic> json) {
  return Thumbnail(
    json['url'] as String,
    json['plain_url'] as String?,
    (json['height'] as num?)?.toDouble(),
    (json['width'] as num?)?.toDouble(),
    (json['real_height'] as num?)?.toDouble(),
    (json['real_width'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$ThumbnailToJson(Thumbnail instance) => <String, dynamic>{
      'url': instance.url,
      'plain_url': instance.plainUrl,
      'height': instance.height,
      'width': instance.width,
      'real_height': instance.realHeight,
      'real_width': instance.realWidth,
    };
