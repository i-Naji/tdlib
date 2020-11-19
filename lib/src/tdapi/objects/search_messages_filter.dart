part of '../tdapi.dart';

class SearchMessagesFilter extends TdObject {
  /// Represents a filter for message search results
  SearchMessagesFilter();

  /// a SearchMessagesFilter return type can be :
  /// * SearchMessagesFilterEmpty
  /// * SearchMessagesFilterAnimation
  /// * SearchMessagesFilterAudio
  /// * SearchMessagesFilterDocument
  /// * SearchMessagesFilterPhoto
  /// * SearchMessagesFilterVideo
  /// * SearchMessagesFilterVoiceNote
  /// * SearchMessagesFilterPhotoAndVideo
  /// * SearchMessagesFilterUrl
  /// * SearchMessagesFilterChatPhoto
  /// * SearchMessagesFilterCall
  /// * SearchMessagesFilterMissedCall
  /// * SearchMessagesFilterVideoNote
  /// * SearchMessagesFilterVoiceAndVideoNote
  /// * SearchMessagesFilterMention
  /// * SearchMessagesFilterUnreadMention
  /// * SearchMessagesFilterFailedToSend
  /// * SearchMessagesFilterPinned
  factory SearchMessagesFilter.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case SearchMessagesFilterEmpty.CONSTRUCTOR:
        return SearchMessagesFilterEmpty.fromJson(json);
      case SearchMessagesFilterAnimation.CONSTRUCTOR:
        return SearchMessagesFilterAnimation.fromJson(json);
      case SearchMessagesFilterAudio.CONSTRUCTOR:
        return SearchMessagesFilterAudio.fromJson(json);
      case SearchMessagesFilterDocument.CONSTRUCTOR:
        return SearchMessagesFilterDocument.fromJson(json);
      case SearchMessagesFilterPhoto.CONSTRUCTOR:
        return SearchMessagesFilterPhoto.fromJson(json);
      case SearchMessagesFilterVideo.CONSTRUCTOR:
        return SearchMessagesFilterVideo.fromJson(json);
      case SearchMessagesFilterVoiceNote.CONSTRUCTOR:
        return SearchMessagesFilterVoiceNote.fromJson(json);
      case SearchMessagesFilterPhotoAndVideo.CONSTRUCTOR:
        return SearchMessagesFilterPhotoAndVideo.fromJson(json);
      case SearchMessagesFilterUrl.CONSTRUCTOR:
        return SearchMessagesFilterUrl.fromJson(json);
      case SearchMessagesFilterChatPhoto.CONSTRUCTOR:
        return SearchMessagesFilterChatPhoto.fromJson(json);
      case SearchMessagesFilterCall.CONSTRUCTOR:
        return SearchMessagesFilterCall.fromJson(json);
      case SearchMessagesFilterMissedCall.CONSTRUCTOR:
        return SearchMessagesFilterMissedCall.fromJson(json);
      case SearchMessagesFilterVideoNote.CONSTRUCTOR:
        return SearchMessagesFilterVideoNote.fromJson(json);
      case SearchMessagesFilterVoiceAndVideoNote.CONSTRUCTOR:
        return SearchMessagesFilterVoiceAndVideoNote.fromJson(json);
      case SearchMessagesFilterMention.CONSTRUCTOR:
        return SearchMessagesFilterMention.fromJson(json);
      case SearchMessagesFilterUnreadMention.CONSTRUCTOR:
        return SearchMessagesFilterUnreadMention.fromJson(json);
      case SearchMessagesFilterFailedToSend.CONSTRUCTOR:
        return SearchMessagesFilterFailedToSend.fromJson(json);
      case SearchMessagesFilterPinned.CONSTRUCTOR:
        return SearchMessagesFilterPinned.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'searchMessagesFilter';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterEmpty extends SearchMessagesFilter {
  /// Returns all found messages, no filter is applied
  SearchMessagesFilterEmpty();

  /// Parse from a json
  SearchMessagesFilterEmpty.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'searchMessagesFilterEmpty';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterAnimation extends SearchMessagesFilter {
  /// Returns only animation messages
  SearchMessagesFilterAnimation();

  /// Parse from a json
  SearchMessagesFilterAnimation.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'searchMessagesFilterAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterAudio extends SearchMessagesFilter {
  /// Returns only audio messages
  SearchMessagesFilterAudio();

  /// Parse from a json
  SearchMessagesFilterAudio.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'searchMessagesFilterAudio';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterDocument extends SearchMessagesFilter {
  /// Returns only document messages
  SearchMessagesFilterDocument();

  /// Parse from a json
  SearchMessagesFilterDocument.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'searchMessagesFilterDocument';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterPhoto extends SearchMessagesFilter {
  /// Returns only photo messages
  SearchMessagesFilterPhoto();

  /// Parse from a json
  SearchMessagesFilterPhoto.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'searchMessagesFilterPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterVideo extends SearchMessagesFilter {
  /// Returns only video messages
  SearchMessagesFilterVideo();

  /// Parse from a json
  SearchMessagesFilterVideo.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'searchMessagesFilterVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterVoiceNote extends SearchMessagesFilter {
  /// Returns only voice note messages
  SearchMessagesFilterVoiceNote();

  /// Parse from a json
  SearchMessagesFilterVoiceNote.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'searchMessagesFilterVoiceNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterPhotoAndVideo extends SearchMessagesFilter {
  /// Returns only photo and video messages
  SearchMessagesFilterPhotoAndVideo();

  /// Parse from a json
  SearchMessagesFilterPhotoAndVideo.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'searchMessagesFilterPhotoAndVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterUrl extends SearchMessagesFilter {
  /// Returns only messages containing URLs
  SearchMessagesFilterUrl();

  /// Parse from a json
  SearchMessagesFilterUrl.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'searchMessagesFilterUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterChatPhoto extends SearchMessagesFilter {
  /// Returns only messages containing chat photos
  SearchMessagesFilterChatPhoto();

  /// Parse from a json
  SearchMessagesFilterChatPhoto.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'searchMessagesFilterChatPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterCall extends SearchMessagesFilter {
  /// Returns only call messages
  SearchMessagesFilterCall();

  /// Parse from a json
  SearchMessagesFilterCall.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'searchMessagesFilterCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterMissedCall extends SearchMessagesFilter {
  /// Returns only incoming call messages with missed/declined discard reasons
  SearchMessagesFilterMissedCall();

  /// Parse from a json
  SearchMessagesFilterMissedCall.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'searchMessagesFilterMissedCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterVideoNote extends SearchMessagesFilter {
  /// Returns only video note messages
  SearchMessagesFilterVideoNote();

  /// Parse from a json
  SearchMessagesFilterVideoNote.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'searchMessagesFilterVideoNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterVoiceAndVideoNote extends SearchMessagesFilter {
  /// Returns only voice and video note messages
  SearchMessagesFilterVoiceAndVideoNote();

  /// Parse from a json
  SearchMessagesFilterVoiceAndVideoNote.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'searchMessagesFilterVoiceAndVideoNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterMention extends SearchMessagesFilter {
  /// Returns only messages with mentions of the current user, or messages that are replies to their messages
  SearchMessagesFilterMention();

  /// Parse from a json
  SearchMessagesFilterMention.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'searchMessagesFilterMention';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterUnreadMention extends SearchMessagesFilter {
  /// Returns only messages with unread mentions of the current user, or messages that are replies to their messages. When using this filter the results can't be additionally filtered by a query, a message thread or by the sending user
  SearchMessagesFilterUnreadMention();

  /// Parse from a json
  SearchMessagesFilterUnreadMention.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'searchMessagesFilterUnreadMention';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterFailedToSend extends SearchMessagesFilter {
  /// Returns only failed to send messages. This filter can be used only if the message database is used
  SearchMessagesFilterFailedToSend();

  /// Parse from a json
  SearchMessagesFilterFailedToSend.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'searchMessagesFilterFailedToSend';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterPinned extends SearchMessagesFilter {
  /// Returns only pinned messages
  SearchMessagesFilterPinned();

  /// Parse from a json
  SearchMessagesFilterPinned.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'searchMessagesFilterPinned';

  @override
  String getConstructor() => CONSTRUCTOR;
}
