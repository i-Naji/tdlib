part of '../tdapi.dart';

class PageBlock extends TdObject {

  /// Describes a block of an instant view web page
  const PageBlock();
  
  /// a PageBlock return type can be :
  /// * [PageBlockTitle]
  /// * [PageBlockSubtitle]
  /// * [PageBlockAuthorDate]
  /// * [PageBlockHeader]
  /// * [PageBlockSubheader]
  /// * [PageBlockKicker]
  /// * [PageBlockParagraph]
  /// * [PageBlockPreformatted]
  /// * [PageBlockFooter]
  /// * [PageBlockDivider]
  /// * [PageBlockAnchor]
  /// * [PageBlockList]
  /// * [PageBlockBlockQuote]
  /// * [PageBlockPullQuote]
  /// * [PageBlockAnimation]
  /// * [PageBlockAudio]
  /// * [PageBlockPhoto]
  /// * [PageBlockVideo]
  /// * [PageBlockVoiceNote]
  /// * [PageBlockCover]
  /// * [PageBlockEmbedded]
  /// * [PageBlockEmbeddedPost]
  /// * [PageBlockCollage]
  /// * [PageBlockSlideshow]
  /// * [PageBlockChatLink]
  /// * [PageBlockTable]
  /// * [PageBlockDetails]
  /// * [PageBlockRelatedArticles]
  /// * [PageBlockMap]
  factory PageBlock.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PageBlockTitle.CONSTRUCTOR:
        return PageBlockTitle.fromJson(json);
      case PageBlockSubtitle.CONSTRUCTOR:
        return PageBlockSubtitle.fromJson(json);
      case PageBlockAuthorDate.CONSTRUCTOR:
        return PageBlockAuthorDate.fromJson(json);
      case PageBlockHeader.CONSTRUCTOR:
        return PageBlockHeader.fromJson(json);
      case PageBlockSubheader.CONSTRUCTOR:
        return PageBlockSubheader.fromJson(json);
      case PageBlockKicker.CONSTRUCTOR:
        return PageBlockKicker.fromJson(json);
      case PageBlockParagraph.CONSTRUCTOR:
        return PageBlockParagraph.fromJson(json);
      case PageBlockPreformatted.CONSTRUCTOR:
        return PageBlockPreformatted.fromJson(json);
      case PageBlockFooter.CONSTRUCTOR:
        return PageBlockFooter.fromJson(json);
      case PageBlockDivider.CONSTRUCTOR:
        return PageBlockDivider.fromJson(json);
      case PageBlockAnchor.CONSTRUCTOR:
        return PageBlockAnchor.fromJson(json);
      case PageBlockList.CONSTRUCTOR:
        return PageBlockList.fromJson(json);
      case PageBlockBlockQuote.CONSTRUCTOR:
        return PageBlockBlockQuote.fromJson(json);
      case PageBlockPullQuote.CONSTRUCTOR:
        return PageBlockPullQuote.fromJson(json);
      case PageBlockAnimation.CONSTRUCTOR:
        return PageBlockAnimation.fromJson(json);
      case PageBlockAudio.CONSTRUCTOR:
        return PageBlockAudio.fromJson(json);
      case PageBlockPhoto.CONSTRUCTOR:
        return PageBlockPhoto.fromJson(json);
      case PageBlockVideo.CONSTRUCTOR:
        return PageBlockVideo.fromJson(json);
      case PageBlockVoiceNote.CONSTRUCTOR:
        return PageBlockVoiceNote.fromJson(json);
      case PageBlockCover.CONSTRUCTOR:
        return PageBlockCover.fromJson(json);
      case PageBlockEmbedded.CONSTRUCTOR:
        return PageBlockEmbedded.fromJson(json);
      case PageBlockEmbeddedPost.CONSTRUCTOR:
        return PageBlockEmbeddedPost.fromJson(json);
      case PageBlockCollage.CONSTRUCTOR:
        return PageBlockCollage.fromJson(json);
      case PageBlockSlideshow.CONSTRUCTOR:
        return PageBlockSlideshow.fromJson(json);
      case PageBlockChatLink.CONSTRUCTOR:
        return PageBlockChatLink.fromJson(json);
      case PageBlockTable.CONSTRUCTOR:
        return PageBlockTable.fromJson(json);
      case PageBlockDetails.CONSTRUCTOR:
        return PageBlockDetails.fromJson(json);
      case PageBlockRelatedArticles.CONSTRUCTOR:
        return PageBlockRelatedArticles.fromJson(json);
      case PageBlockMap.CONSTRUCTOR:
        return PageBlockMap.fromJson(json);
      default:
        return const PageBlock();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  PageBlock copyWith() => const PageBlock();

  static const CONSTRUCTOR = 'pageBlock';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockTitle extends PageBlock {

  /// The title of a page
  const PageBlockTitle({
    required this.title,
  });
  
  /// [title] Title
  final RichText title;
  
  /// Parse from a json
  factory PageBlockTitle.fromJson(Map<String, dynamic> json) => PageBlockTitle(
    title: RichText.fromJson(json['title']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title.toJson(),
    };
  }
  
  @override
  PageBlockTitle copyWith({
    RichText? title,
  }) => PageBlockTitle(
    title: title ?? this.title,
  );

  static const CONSTRUCTOR = 'pageBlockTitle';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockSubtitle extends PageBlock {

  /// The subtitle of a page
  const PageBlockSubtitle({
    required this.subtitle,
  });
  
  /// [subtitle] Subtitle
  final RichText subtitle;
  
  /// Parse from a json
  factory PageBlockSubtitle.fromJson(Map<String, dynamic> json) => PageBlockSubtitle(
    subtitle: RichText.fromJson(json['subtitle']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "subtitle": subtitle.toJson(),
    };
  }
  
  @override
  PageBlockSubtitle copyWith({
    RichText? subtitle,
  }) => PageBlockSubtitle(
    subtitle: subtitle ?? this.subtitle,
  );

  static const CONSTRUCTOR = 'pageBlockSubtitle';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockAuthorDate extends PageBlock {

  /// The author and publishing date of a page
  const PageBlockAuthorDate({
    required this.author,
    required this.publishDate,
  });
  
  /// [author] Author 
  final RichText author;

  /// [publishDate] Point in time (Unix timestamp) when the article was published; 0 if unknown
  final int publishDate;
  
  /// Parse from a json
  factory PageBlockAuthorDate.fromJson(Map<String, dynamic> json) => PageBlockAuthorDate(
    author: RichText.fromJson(json['author']),
    publishDate: json['publish_date'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "author": author.toJson(),
      "publish_date": publishDate,
    };
  }
  
  @override
  PageBlockAuthorDate copyWith({
    RichText? author,
    int? publishDate,
  }) => PageBlockAuthorDate(
    author: author ?? this.author,
    publishDate: publishDate ?? this.publishDate,
  );

  static const CONSTRUCTOR = 'pageBlockAuthorDate';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockHeader extends PageBlock {

  /// A header
  const PageBlockHeader({
    required this.header,
  });
  
  /// [header] Header
  final RichText header;
  
  /// Parse from a json
  factory PageBlockHeader.fromJson(Map<String, dynamic> json) => PageBlockHeader(
    header: RichText.fromJson(json['header']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "header": header.toJson(),
    };
  }
  
  @override
  PageBlockHeader copyWith({
    RichText? header,
  }) => PageBlockHeader(
    header: header ?? this.header,
  );

  static const CONSTRUCTOR = 'pageBlockHeader';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockSubheader extends PageBlock {

  /// A subheader
  const PageBlockSubheader({
    required this.subheader,
  });
  
  /// [subheader] Subheader
  final RichText subheader;
  
  /// Parse from a json
  factory PageBlockSubheader.fromJson(Map<String, dynamic> json) => PageBlockSubheader(
    subheader: RichText.fromJson(json['subheader']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "subheader": subheader.toJson(),
    };
  }
  
  @override
  PageBlockSubheader copyWith({
    RichText? subheader,
  }) => PageBlockSubheader(
    subheader: subheader ?? this.subheader,
  );

  static const CONSTRUCTOR = 'pageBlockSubheader';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockKicker extends PageBlock {

  /// A kicker
  const PageBlockKicker({
    required this.kicker,
  });
  
  /// [kicker] Kicker
  final RichText kicker;
  
  /// Parse from a json
  factory PageBlockKicker.fromJson(Map<String, dynamic> json) => PageBlockKicker(
    kicker: RichText.fromJson(json['kicker']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "kicker": kicker.toJson(),
    };
  }
  
  @override
  PageBlockKicker copyWith({
    RichText? kicker,
  }) => PageBlockKicker(
    kicker: kicker ?? this.kicker,
  );

  static const CONSTRUCTOR = 'pageBlockKicker';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockParagraph extends PageBlock {

  /// A text paragraph
  const PageBlockParagraph({
    required this.text,
  });
  
  /// [text] Paragraph text
  final RichText text;
  
  /// Parse from a json
  factory PageBlockParagraph.fromJson(Map<String, dynamic> json) => PageBlockParagraph(
    text: RichText.fromJson(json['text']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
    };
  }
  
  @override
  PageBlockParagraph copyWith({
    RichText? text,
  }) => PageBlockParagraph(
    text: text ?? this.text,
  );

  static const CONSTRUCTOR = 'pageBlockParagraph';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockPreformatted extends PageBlock {

  /// A preformatted text paragraph
  const PageBlockPreformatted({
    required this.text,
    required this.language,
  });
  
  /// [text] Paragraph text 
  final RichText text;

  /// [language] Programming language for which the text needs to be formatted
  final String language;
  
  /// Parse from a json
  factory PageBlockPreformatted.fromJson(Map<String, dynamic> json) => PageBlockPreformatted(
    text: RichText.fromJson(json['text']),
    language: json['language'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "language": language,
    };
  }
  
  @override
  PageBlockPreformatted copyWith({
    RichText? text,
    String? language,
  }) => PageBlockPreformatted(
    text: text ?? this.text,
    language: language ?? this.language,
  );

  static const CONSTRUCTOR = 'pageBlockPreformatted';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockFooter extends PageBlock {

  /// The footer of a page
  const PageBlockFooter({
    required this.footer,
  });
  
  /// [footer] Footer
  final RichText footer;
  
  /// Parse from a json
  factory PageBlockFooter.fromJson(Map<String, dynamic> json) => PageBlockFooter(
    footer: RichText.fromJson(json['footer']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "footer": footer.toJson(),
    };
  }
  
  @override
  PageBlockFooter copyWith({
    RichText? footer,
  }) => PageBlockFooter(
    footer: footer ?? this.footer,
  );

  static const CONSTRUCTOR = 'pageBlockFooter';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockDivider extends PageBlock {

  /// An empty block separating a page
  const PageBlockDivider();
  
  /// Parse from a json
  factory PageBlockDivider.fromJson(Map<String, dynamic> json) => const PageBlockDivider();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PageBlockDivider copyWith() => const PageBlockDivider();

  static const CONSTRUCTOR = 'pageBlockDivider';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockAnchor extends PageBlock {

  /// An invisible anchor on a page, which can be used in a URL to open the page from the specified anchor
  const PageBlockAnchor({
    required this.name,
  });
  
  /// [name] Name of the anchor
  final String name;
  
  /// Parse from a json
  factory PageBlockAnchor.fromJson(Map<String, dynamic> json) => PageBlockAnchor(
    name: json['name'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
    };
  }
  
  @override
  PageBlockAnchor copyWith({
    String? name,
  }) => PageBlockAnchor(
    name: name ?? this.name,
  );

  static const CONSTRUCTOR = 'pageBlockAnchor';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockList extends PageBlock {

  /// A list of data blocks
  const PageBlockList({
    required this.items,
  });
  
  /// [items] The items of the list
  final List<PageBlockListItem> items;
  
  /// Parse from a json
  factory PageBlockList.fromJson(Map<String, dynamic> json) => PageBlockList(
    items: List<PageBlockListItem>.from((json['items'] ?? []).map((item) => PageBlockListItem.fromJson(item)).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "items": items.map((i) => i.toJson()).toList(),
    };
  }
  
  @override
  PageBlockList copyWith({
    List<PageBlockListItem>? items,
  }) => PageBlockList(
    items: items ?? this.items,
  );

  static const CONSTRUCTOR = 'pageBlockList';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockBlockQuote extends PageBlock {

  /// A block quote
  const PageBlockBlockQuote({
    required this.text,
    required this.credit,
  });
  
  /// [text] Quote text 
  final RichText text;

  /// [credit] Quote credit
  final RichText credit;
  
  /// Parse from a json
  factory PageBlockBlockQuote.fromJson(Map<String, dynamic> json) => PageBlockBlockQuote(
    text: RichText.fromJson(json['text']),
    credit: RichText.fromJson(json['credit']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "credit": credit.toJson(),
    };
  }
  
  @override
  PageBlockBlockQuote copyWith({
    RichText? text,
    RichText? credit,
  }) => PageBlockBlockQuote(
    text: text ?? this.text,
    credit: credit ?? this.credit,
  );

  static const CONSTRUCTOR = 'pageBlockBlockQuote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockPullQuote extends PageBlock {

  /// A pull quote
  const PageBlockPullQuote({
    required this.text,
    required this.credit,
  });
  
  /// [text] Quote text 
  final RichText text;

  /// [credit] Quote credit
  final RichText credit;
  
  /// Parse from a json
  factory PageBlockPullQuote.fromJson(Map<String, dynamic> json) => PageBlockPullQuote(
    text: RichText.fromJson(json['text']),
    credit: RichText.fromJson(json['credit']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "credit": credit.toJson(),
    };
  }
  
  @override
  PageBlockPullQuote copyWith({
    RichText? text,
    RichText? credit,
  }) => PageBlockPullQuote(
    text: text ?? this.text,
    credit: credit ?? this.credit,
  );

  static const CONSTRUCTOR = 'pageBlockPullQuote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockAnimation extends PageBlock {

  /// An animation
  const PageBlockAnimation({
    this.animation,
    required this.caption,
    required this.needAutoplay,
  });
  
  /// [animation] Animation file; may be null 
  final Animation? animation;

  /// [caption] Animation caption 
  final PageBlockCaption caption;

  /// [needAutoplay] True, if the animation must be played automatically
  final bool needAutoplay;
  
  /// Parse from a json
  factory PageBlockAnimation.fromJson(Map<String, dynamic> json) => PageBlockAnimation(
    animation: json['animation'] == null ? null : Animation.fromJson(json['animation']),
    caption: PageBlockCaption.fromJson(json['caption']),
    needAutoplay: json['need_autoplay'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "animation": animation?.toJson(),
      "caption": caption.toJson(),
      "need_autoplay": needAutoplay,
    };
  }
  
  @override
  PageBlockAnimation copyWith({
    Animation? animation,
    PageBlockCaption? caption,
    bool? needAutoplay,
  }) => PageBlockAnimation(
    animation: animation ?? this.animation,
    caption: caption ?? this.caption,
    needAutoplay: needAutoplay ?? this.needAutoplay,
  );

  static const CONSTRUCTOR = 'pageBlockAnimation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockAudio extends PageBlock {

  /// An audio file
  const PageBlockAudio({
    this.audio,
    required this.caption,
  });
  
  /// [audio] Audio file; may be null 
  final Audio? audio;

  /// [caption] Audio file caption
  final PageBlockCaption caption;
  
  /// Parse from a json
  factory PageBlockAudio.fromJson(Map<String, dynamic> json) => PageBlockAudio(
    audio: json['audio'] == null ? null : Audio.fromJson(json['audio']),
    caption: PageBlockCaption.fromJson(json['caption']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "audio": audio?.toJson(),
      "caption": caption.toJson(),
    };
  }
  
  @override
  PageBlockAudio copyWith({
    Audio? audio,
    PageBlockCaption? caption,
  }) => PageBlockAudio(
    audio: audio ?? this.audio,
    caption: caption ?? this.caption,
  );

  static const CONSTRUCTOR = 'pageBlockAudio';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockPhoto extends PageBlock {

  /// A photo
  const PageBlockPhoto({
    this.photo,
    required this.caption,
    required this.url,
  });
  
  /// [photo] Photo file; may be null 
  final Photo? photo;

  /// [caption] Photo caption 
  final PageBlockCaption caption;

  /// [url] URL that needs to be opened when the photo is clicked
  final String url;
  
  /// Parse from a json
  factory PageBlockPhoto.fromJson(Map<String, dynamic> json) => PageBlockPhoto(
    photo: json['photo'] == null ? null : Photo.fromJson(json['photo']),
    caption: PageBlockCaption.fromJson(json['caption']),
    url: json['url'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo?.toJson(),
      "caption": caption.toJson(),
      "url": url,
    };
  }
  
  @override
  PageBlockPhoto copyWith({
    Photo? photo,
    PageBlockCaption? caption,
    String? url,
  }) => PageBlockPhoto(
    photo: photo ?? this.photo,
    caption: caption ?? this.caption,
    url: url ?? this.url,
  );

  static const CONSTRUCTOR = 'pageBlockPhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockVideo extends PageBlock {

  /// A video
  const PageBlockVideo({
    this.video,
    required this.caption,
    required this.needAutoplay,
    required this.isLooped,
  });
  
  /// [video] Video file; may be null 
  final Video? video;

  /// [caption] Video caption 
  final PageBlockCaption caption;

  /// [needAutoplay] True, if the video must be played automatically 
  final bool needAutoplay;

  /// [isLooped] True, if the video must be looped
  final bool isLooped;
  
  /// Parse from a json
  factory PageBlockVideo.fromJson(Map<String, dynamic> json) => PageBlockVideo(
    video: json['video'] == null ? null : Video.fromJson(json['video']),
    caption: PageBlockCaption.fromJson(json['caption']),
    needAutoplay: json['need_autoplay'],
    isLooped: json['is_looped'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "video": video?.toJson(),
      "caption": caption.toJson(),
      "need_autoplay": needAutoplay,
      "is_looped": isLooped,
    };
  }
  
  @override
  PageBlockVideo copyWith({
    Video? video,
    PageBlockCaption? caption,
    bool? needAutoplay,
    bool? isLooped,
  }) => PageBlockVideo(
    video: video ?? this.video,
    caption: caption ?? this.caption,
    needAutoplay: needAutoplay ?? this.needAutoplay,
    isLooped: isLooped ?? this.isLooped,
  );

  static const CONSTRUCTOR = 'pageBlockVideo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockVoiceNote extends PageBlock {

  /// A voice note
  const PageBlockVoiceNote({
    this.voiceNote,
    required this.caption,
  });
  
  /// [voiceNote] Voice note; may be null 
  final VoiceNote? voiceNote;

  /// [caption] Voice note caption
  final PageBlockCaption caption;
  
  /// Parse from a json
  factory PageBlockVoiceNote.fromJson(Map<String, dynamic> json) => PageBlockVoiceNote(
    voiceNote: json['voice_note'] == null ? null : VoiceNote.fromJson(json['voice_note']),
    caption: PageBlockCaption.fromJson(json['caption']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "voice_note": voiceNote?.toJson(),
      "caption": caption.toJson(),
    };
  }
  
  @override
  PageBlockVoiceNote copyWith({
    VoiceNote? voiceNote,
    PageBlockCaption? caption,
  }) => PageBlockVoiceNote(
    voiceNote: voiceNote ?? this.voiceNote,
    caption: caption ?? this.caption,
  );

  static const CONSTRUCTOR = 'pageBlockVoiceNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockCover extends PageBlock {

  /// A page cover
  const PageBlockCover({
    required this.cover,
  });
  
  /// [cover] Cover
  final PageBlock cover;
  
  /// Parse from a json
  factory PageBlockCover.fromJson(Map<String, dynamic> json) => PageBlockCover(
    cover: PageBlock.fromJson(json['cover']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "cover": cover.toJson(),
    };
  }
  
  @override
  PageBlockCover copyWith({
    PageBlock? cover,
  }) => PageBlockCover(
    cover: cover ?? this.cover,
  );

  static const CONSTRUCTOR = 'pageBlockCover';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockEmbedded extends PageBlock {

  /// An embedded web page
  const PageBlockEmbedded({
    required this.url,
    required this.html,
    this.posterPhoto,
    required this.width,
    required this.height,
    required this.caption,
    required this.isFullWidth,
    required this.allowScrolling,
  });
  
  /// [url] Web page URL, if available 
  final String url;

  /// [html] HTML-markup of the embedded page 
  final String html;

  /// [posterPhoto] Poster photo, if available; may be null 
  final Photo? posterPhoto;

  /// [width] Block width; 0 if unknown 
  final int width;

  /// [height] Block height; 0 if unknown 
  final int height;

  /// [caption] Block caption 
  final PageBlockCaption caption;

  /// [isFullWidth] True, if the block must be full width 
  final bool isFullWidth;

  /// [allowScrolling] True, if scrolling needs to be allowed
  final bool allowScrolling;
  
  /// Parse from a json
  factory PageBlockEmbedded.fromJson(Map<String, dynamic> json) => PageBlockEmbedded(
    url: json['url'],
    html: json['html'],
    posterPhoto: json['poster_photo'] == null ? null : Photo.fromJson(json['poster_photo']),
    width: json['width'],
    height: json['height'],
    caption: PageBlockCaption.fromJson(json['caption']),
    isFullWidth: json['is_full_width'],
    allowScrolling: json['allow_scrolling'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "html": html,
      "poster_photo": posterPhoto?.toJson(),
      "width": width,
      "height": height,
      "caption": caption.toJson(),
      "is_full_width": isFullWidth,
      "allow_scrolling": allowScrolling,
    };
  }
  
  @override
  PageBlockEmbedded copyWith({
    String? url,
    String? html,
    Photo? posterPhoto,
    int? width,
    int? height,
    PageBlockCaption? caption,
    bool? isFullWidth,
    bool? allowScrolling,
  }) => PageBlockEmbedded(
    url: url ?? this.url,
    html: html ?? this.html,
    posterPhoto: posterPhoto ?? this.posterPhoto,
    width: width ?? this.width,
    height: height ?? this.height,
    caption: caption ?? this.caption,
    isFullWidth: isFullWidth ?? this.isFullWidth,
    allowScrolling: allowScrolling ?? this.allowScrolling,
  );

  static const CONSTRUCTOR = 'pageBlockEmbedded';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockEmbeddedPost extends PageBlock {

  /// An embedded post
  const PageBlockEmbeddedPost({
    required this.url,
    required this.author,
    this.authorPhoto,
    required this.date,
    required this.pageBlocks,
    required this.caption,
  });
  
  /// [url] Web page URL 
  final String url;

  /// [author] Post author 
  final String author;

  /// [authorPhoto] Post author photo; may be null 
  final Photo? authorPhoto;

  /// [date] Point in time (Unix timestamp) when the post was created; 0 if unknown 
  final int date;

  /// [pageBlocks] Post content 
  final List<PageBlock> pageBlocks;

  /// [caption] Post caption
  final PageBlockCaption caption;
  
  /// Parse from a json
  factory PageBlockEmbeddedPost.fromJson(Map<String, dynamic> json) => PageBlockEmbeddedPost(
    url: json['url'],
    author: json['author'],
    authorPhoto: json['author_photo'] == null ? null : Photo.fromJson(json['author_photo']),
    date: json['date'],
    pageBlocks: List<PageBlock>.from((json['page_blocks'] ?? []).map((item) => PageBlock.fromJson(item)).toList()),
    caption: PageBlockCaption.fromJson(json['caption']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "author": author,
      "author_photo": authorPhoto?.toJson(),
      "date": date,
      "page_blocks": pageBlocks.map((i) => i.toJson()).toList(),
      "caption": caption.toJson(),
    };
  }
  
  @override
  PageBlockEmbeddedPost copyWith({
    String? url,
    String? author,
    Photo? authorPhoto,
    int? date,
    List<PageBlock>? pageBlocks,
    PageBlockCaption? caption,
  }) => PageBlockEmbeddedPost(
    url: url ?? this.url,
    author: author ?? this.author,
    authorPhoto: authorPhoto ?? this.authorPhoto,
    date: date ?? this.date,
    pageBlocks: pageBlocks ?? this.pageBlocks,
    caption: caption ?? this.caption,
  );

  static const CONSTRUCTOR = 'pageBlockEmbeddedPost';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockCollage extends PageBlock {

  /// A collage
  const PageBlockCollage({
    required this.pageBlocks,
    required this.caption,
  });
  
  /// [pageBlocks] Collage item contents 
  final List<PageBlock> pageBlocks;

  /// [caption] Block caption
  final PageBlockCaption caption;
  
  /// Parse from a json
  factory PageBlockCollage.fromJson(Map<String, dynamic> json) => PageBlockCollage(
    pageBlocks: List<PageBlock>.from((json['page_blocks'] ?? []).map((item) => PageBlock.fromJson(item)).toList()),
    caption: PageBlockCaption.fromJson(json['caption']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "page_blocks": pageBlocks.map((i) => i.toJson()).toList(),
      "caption": caption.toJson(),
    };
  }
  
  @override
  PageBlockCollage copyWith({
    List<PageBlock>? pageBlocks,
    PageBlockCaption? caption,
  }) => PageBlockCollage(
    pageBlocks: pageBlocks ?? this.pageBlocks,
    caption: caption ?? this.caption,
  );

  static const CONSTRUCTOR = 'pageBlockCollage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockSlideshow extends PageBlock {

  /// A slideshow
  const PageBlockSlideshow({
    required this.pageBlocks,
    required this.caption,
  });
  
  /// [pageBlocks] Slideshow item contents 
  final List<PageBlock> pageBlocks;

  /// [caption] Block caption
  final PageBlockCaption caption;
  
  /// Parse from a json
  factory PageBlockSlideshow.fromJson(Map<String, dynamic> json) => PageBlockSlideshow(
    pageBlocks: List<PageBlock>.from((json['page_blocks'] ?? []).map((item) => PageBlock.fromJson(item)).toList()),
    caption: PageBlockCaption.fromJson(json['caption']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "page_blocks": pageBlocks.map((i) => i.toJson()).toList(),
      "caption": caption.toJson(),
    };
  }
  
  @override
  PageBlockSlideshow copyWith({
    List<PageBlock>? pageBlocks,
    PageBlockCaption? caption,
  }) => PageBlockSlideshow(
    pageBlocks: pageBlocks ?? this.pageBlocks,
    caption: caption ?? this.caption,
  );

  static const CONSTRUCTOR = 'pageBlockSlideshow';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockChatLink extends PageBlock {

  /// A link to a chat
  const PageBlockChatLink({
    required this.title,
    this.photo,
    required this.username,
  });
  
  /// [title] Chat title 
  final String title;

  /// [photo] Chat photo; may be null 
  final ChatPhotoInfo? photo;

  /// [username] Chat username, by which all other information about the chat can be resolved
  final String username;
  
  /// Parse from a json
  factory PageBlockChatLink.fromJson(Map<String, dynamic> json) => PageBlockChatLink(
    title: json['title'],
    photo: json['photo'] == null ? null : ChatPhotoInfo.fromJson(json['photo']),
    username: json['username'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "photo": photo?.toJson(),
      "username": username,
    };
  }
  
  @override
  PageBlockChatLink copyWith({
    String? title,
    ChatPhotoInfo? photo,
    String? username,
  }) => PageBlockChatLink(
    title: title ?? this.title,
    photo: photo ?? this.photo,
    username: username ?? this.username,
  );

  static const CONSTRUCTOR = 'pageBlockChatLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockTable extends PageBlock {

  /// A table
  const PageBlockTable({
    required this.caption,
    required this.cells,
    required this.isBordered,
    required this.isStriped,
  });
  
  /// [caption] Table caption 
  final RichText caption;

  /// [cells] Table cells 
  final List<List<PageBlockTableCell>> cells;

  /// [isBordered] True, if the table is bordered 
  final bool isBordered;

  /// [isStriped] True, if the table is striped
  final bool isStriped;
  
  /// Parse from a json
  factory PageBlockTable.fromJson(Map<String, dynamic> json) => PageBlockTable(
    caption: RichText.fromJson(json['caption']),
    cells: List<List<PageBlockTableCell>>.from((json['cells'] ?? []).map((item) => List<PageBlockTableCell>.from((item ?? []).map((innerItem) => PageBlockTableCell.fromJson(innerItem)).toList())).toList()),
    isBordered: json['is_bordered'],
    isStriped: json['is_striped'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "caption": caption.toJson(),
      "cells": cells.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
      "is_bordered": isBordered,
      "is_striped": isStriped,
    };
  }
  
  @override
  PageBlockTable copyWith({
    RichText? caption,
    List<List<PageBlockTableCell>>? cells,
    bool? isBordered,
    bool? isStriped,
  }) => PageBlockTable(
    caption: caption ?? this.caption,
    cells: cells ?? this.cells,
    isBordered: isBordered ?? this.isBordered,
    isStriped: isStriped ?? this.isStriped,
  );

  static const CONSTRUCTOR = 'pageBlockTable';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockDetails extends PageBlock {

  /// A collapsible block
  const PageBlockDetails({
    required this.header,
    required this.pageBlocks,
    required this.isOpen,
  });
  
  /// [header] Always visible heading for the block 
  final RichText header;

  /// [pageBlocks] Block contents 
  final List<PageBlock> pageBlocks;

  /// [isOpen] True, if the block is open by default
  final bool isOpen;
  
  /// Parse from a json
  factory PageBlockDetails.fromJson(Map<String, dynamic> json) => PageBlockDetails(
    header: RichText.fromJson(json['header']),
    pageBlocks: List<PageBlock>.from((json['page_blocks'] ?? []).map((item) => PageBlock.fromJson(item)).toList()),
    isOpen: json['is_open'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "header": header.toJson(),
      "page_blocks": pageBlocks.map((i) => i.toJson()).toList(),
      "is_open": isOpen,
    };
  }
  
  @override
  PageBlockDetails copyWith({
    RichText? header,
    List<PageBlock>? pageBlocks,
    bool? isOpen,
  }) => PageBlockDetails(
    header: header ?? this.header,
    pageBlocks: pageBlocks ?? this.pageBlocks,
    isOpen: isOpen ?? this.isOpen,
  );

  static const CONSTRUCTOR = 'pageBlockDetails';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockRelatedArticles extends PageBlock {

  /// Related articles
  const PageBlockRelatedArticles({
    required this.header,
    required this.articles,
  });
  
  /// [header] Block header 
  final RichText header;

  /// [articles] List of related articles
  final List<PageBlockRelatedArticle> articles;
  
  /// Parse from a json
  factory PageBlockRelatedArticles.fromJson(Map<String, dynamic> json) => PageBlockRelatedArticles(
    header: RichText.fromJson(json['header']),
    articles: List<PageBlockRelatedArticle>.from((json['articles'] ?? []).map((item) => PageBlockRelatedArticle.fromJson(item)).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "header": header.toJson(),
      "articles": articles.map((i) => i.toJson()).toList(),
    };
  }
  
  @override
  PageBlockRelatedArticles copyWith({
    RichText? header,
    List<PageBlockRelatedArticle>? articles,
  }) => PageBlockRelatedArticles(
    header: header ?? this.header,
    articles: articles ?? this.articles,
  );

  static const CONSTRUCTOR = 'pageBlockRelatedArticles';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockMap extends PageBlock {

  /// A map
  const PageBlockMap({
    required this.location,
    required this.zoom,
    required this.width,
    required this.height,
    required this.caption,
  });
  
  /// [location] Location of the map center 
  final Location location;

  /// [zoom] Map zoom level 
  final int zoom;

  /// [width] Map width 
  final int width;

  /// [height] Map height 
  final int height;

  /// [caption] Block caption
  final PageBlockCaption caption;
  
  /// Parse from a json
  factory PageBlockMap.fromJson(Map<String, dynamic> json) => PageBlockMap(
    location: Location.fromJson(json['location']),
    zoom: json['zoom'],
    width: json['width'],
    height: json['height'],
    caption: PageBlockCaption.fromJson(json['caption']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "location": location.toJson(),
      "zoom": zoom,
      "width": width,
      "height": height,
      "caption": caption.toJson(),
    };
  }
  
  @override
  PageBlockMap copyWith({
    Location? location,
    int? zoom,
    int? width,
    int? height,
    PageBlockCaption? caption,
  }) => PageBlockMap(
    location: location ?? this.location,
    zoom: zoom ?? this.zoom,
    width: width ?? this.width,
    height: height ?? this.height,
    caption: caption ?? this.caption,
  );

  static const CONSTRUCTOR = 'pageBlockMap';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
