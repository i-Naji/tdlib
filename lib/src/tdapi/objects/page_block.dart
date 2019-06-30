part of '../tdapi.dart';

class PageBlock implements TLObject {
  /// Describes a block of an instant view web page
  PageBlock();

  /// a PageBlock return type can be :
  /// * PageBlockKicker
  /// * PageBlockRelatedArticles
  /// * PageBlockChatLink
  /// * PageBlockAuthorDate
  /// * PageBlockCollage
  /// * PageBlockEmbedded
  /// * PageBlockParagraph
  /// * PageBlockDivider
  /// * PageBlockPhoto
  /// * PageBlockDetails
  /// * PageBlockList
  /// * PageBlockCover
  /// * PageBlockSubtitle
  /// * PageBlockPreformatted
  /// * PageBlockSubheader
  /// * PageBlockAudio
  /// * PageBlockTable
  /// * PageBlockAnchor
  /// * PageBlockHeader
  /// * PageBlockVideo
  /// * PageBlockSlideshow
  /// * PageBlockEmbeddedPost
  /// * PageBlockMap
  /// * PageBlockTitle
  /// * PageBlockPullQuote
  /// * PageBlockFooter
  /// * PageBlockAnimation
  /// * PageBlockBlockQuote
  factory PageBlock.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case PageBlockKicker.CONSTRUCTOR:
        return PageBlockKicker.fromJson(json);
      case PageBlockRelatedArticles.CONSTRUCTOR:
        return PageBlockRelatedArticles.fromJson(json);
      case PageBlockChatLink.CONSTRUCTOR:
        return PageBlockChatLink.fromJson(json);
      case PageBlockAuthorDate.CONSTRUCTOR:
        return PageBlockAuthorDate.fromJson(json);
      case PageBlockCollage.CONSTRUCTOR:
        return PageBlockCollage.fromJson(json);
      case PageBlockEmbedded.CONSTRUCTOR:
        return PageBlockEmbedded.fromJson(json);
      case PageBlockParagraph.CONSTRUCTOR:
        return PageBlockParagraph.fromJson(json);
      case PageBlockDivider.CONSTRUCTOR:
        return PageBlockDivider.fromJson(json);
      case PageBlockPhoto.CONSTRUCTOR:
        return PageBlockPhoto.fromJson(json);
      case PageBlockDetails.CONSTRUCTOR:
        return PageBlockDetails.fromJson(json);
      case PageBlockList.CONSTRUCTOR:
        return PageBlockList.fromJson(json);
      case PageBlockCover.CONSTRUCTOR:
        return PageBlockCover.fromJson(json);
      case PageBlockSubtitle.CONSTRUCTOR:
        return PageBlockSubtitle.fromJson(json);
      case PageBlockPreformatted.CONSTRUCTOR:
        return PageBlockPreformatted.fromJson(json);
      case PageBlockSubheader.CONSTRUCTOR:
        return PageBlockSubheader.fromJson(json);
      case PageBlockAudio.CONSTRUCTOR:
        return PageBlockAudio.fromJson(json);
      case PageBlockTable.CONSTRUCTOR:
        return PageBlockTable.fromJson(json);
      case PageBlockAnchor.CONSTRUCTOR:
        return PageBlockAnchor.fromJson(json);
      case PageBlockHeader.CONSTRUCTOR:
        return PageBlockHeader.fromJson(json);
      case PageBlockVideo.CONSTRUCTOR:
        return PageBlockVideo.fromJson(json);
      case PageBlockSlideshow.CONSTRUCTOR:
        return PageBlockSlideshow.fromJson(json);
      case PageBlockEmbeddedPost.CONSTRUCTOR:
        return PageBlockEmbeddedPost.fromJson(json);
      case PageBlockMap.CONSTRUCTOR:
        return PageBlockMap.fromJson(json);
      case PageBlockTitle.CONSTRUCTOR:
        return PageBlockTitle.fromJson(json);
      case PageBlockPullQuote.CONSTRUCTOR:
        return PageBlockPullQuote.fromJson(json);
      case PageBlockFooter.CONSTRUCTOR:
        return PageBlockFooter.fromJson(json);
      case PageBlockAnimation.CONSTRUCTOR:
        return PageBlockAnimation.fromJson(json);
      case PageBlockBlockQuote.CONSTRUCTOR:
        return PageBlockBlockQuote.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = 'pageBlock';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockTitle implements PageBlock {
  var title;

  /// The title of a page.
  ///[title] Title
  PageBlockTitle({this.title});

  /// Parse from a json
  PageBlockTitle.fromJson(Map<String, dynamic> json) {
    this.title = RichText.fromJson(json['title'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'title': this.title.toJson()};
  }

  static const String CONSTRUCTOR = 'pageBlockTitle';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockSubtitle implements PageBlock {
  var subtitle;

  /// The subtitle of a page.
  ///[subtitle] Subtitle
  PageBlockSubtitle({this.subtitle});

  /// Parse from a json
  PageBlockSubtitle.fromJson(Map<String, dynamic> json) {
    this.subtitle = RichText.fromJson(json['subtitle'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'subtitle': this.subtitle.toJson()};
  }

  static const String CONSTRUCTOR = 'pageBlockSubtitle';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockAuthorDate implements PageBlock {
  var author;
  int publishDate;

  /// The author and publishing date of a page.
  ///[author] Author .
  /// [publishDate] Point in time (Unix timestamp) when the article was published; 0 if unknown
  PageBlockAuthorDate({this.author, this.publishDate});

  /// Parse from a json
  PageBlockAuthorDate.fromJson(Map<String, dynamic> json) {
    this.author = RichText.fromJson(json['author'] ?? <String, dynamic>{});
    this.publishDate = json['publish_date'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'author': this.author.toJson(),
      'publish_date': this.publishDate
    };
  }

  static const String CONSTRUCTOR = 'pageBlockAuthorDate';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockHeader implements PageBlock {
  var header;

  /// A header.
  ///[header] Header
  PageBlockHeader({this.header});

  /// Parse from a json
  PageBlockHeader.fromJson(Map<String, dynamic> json) {
    this.header = RichText.fromJson(json['header'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'header': this.header.toJson()};
  }

  static const String CONSTRUCTOR = 'pageBlockHeader';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockSubheader implements PageBlock {
  var subheader;

  /// A subheader.
  ///[subheader] Subheader
  PageBlockSubheader({this.subheader});

  /// Parse from a json
  PageBlockSubheader.fromJson(Map<String, dynamic> json) {
    this.subheader =
        RichText.fromJson(json['subheader'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'subheader': this.subheader.toJson()};
  }

  static const String CONSTRUCTOR = 'pageBlockSubheader';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockKicker implements PageBlock {
  var kicker;

  /// A kicker.
  ///[kicker] Kicker
  PageBlockKicker({this.kicker});

  /// Parse from a json
  PageBlockKicker.fromJson(Map<String, dynamic> json) {
    this.kicker = RichText.fromJson(json['kicker'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'kicker': this.kicker.toJson()};
  }

  static const String CONSTRUCTOR = 'pageBlockKicker';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockParagraph implements PageBlock {
  var text;

  /// A text paragraph.
  ///[text] Paragraph text
  PageBlockParagraph({this.text});

  /// Parse from a json
  PageBlockParagraph.fromJson(Map<String, dynamic> json) {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'text': this.text.toJson()};
  }

  static const String CONSTRUCTOR = 'pageBlockParagraph';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockPreformatted implements PageBlock {
  var text;
  String language;

  /// A preformatted text paragraph.
  ///[text] Paragraph text .
  /// [language] Programming language for which the text should be formatted
  PageBlockPreformatted({this.text, this.language});

  /// Parse from a json
  PageBlockPreformatted.fromJson(Map<String, dynamic> json) {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
    this.language = json['language'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'text': this.text.toJson(),
      'language': this.language
    };
  }

  static const String CONSTRUCTOR = 'pageBlockPreformatted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockFooter implements PageBlock {
  var footer;

  /// The footer of a page.
  ///[footer] Footer
  PageBlockFooter({this.footer});

  /// Parse from a json
  PageBlockFooter.fromJson(Map<String, dynamic> json) {
    this.footer = RichText.fromJson(json['footer'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'footer': this.footer.toJson()};
  }

  static const String CONSTRUCTOR = 'pageBlockFooter';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockDivider implements PageBlock {
  /// An empty block separating a page.
  ///
  PageBlockDivider();

  /// Parse from a json
  PageBlockDivider.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'pageBlockDivider';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockAnchor implements PageBlock {
  String name;

  /// An invisible anchor on a page, which can be used in a URL to open the page from the specified anchor.
  ///[name] Name of the anchor
  PageBlockAnchor({this.name});

  /// Parse from a json
  PageBlockAnchor.fromJson(Map<String, dynamic> json) {
    this.name = json['name'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'name': this.name};
  }

  static const String CONSTRUCTOR = 'pageBlockAnchor';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockList implements PageBlock {
  List<PageBlockListItem> items;

  /// A list of data blocks.
  ///[items] The items of the list
  PageBlockList({this.items});

  /// Parse from a json
  PageBlockList.fromJson(Map<String, dynamic> json) {
    this.items = (json['items'] ?? [])
        .map((listValue) => PageBlockListItem.fromJson(listValue))
        .toList();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'items': this.items.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = 'pageBlockList';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockBlockQuote implements PageBlock {
  var text;
  var credit;

  /// A block quote.
  ///[text] Quote text .
  /// [credit] Quote credit
  PageBlockBlockQuote({this.text, this.credit});

  /// Parse from a json
  PageBlockBlockQuote.fromJson(Map<String, dynamic> json) {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
    this.credit = RichText.fromJson(json['credit'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'text': this.text.toJson(),
      'credit': this.credit.toJson()
    };
  }

  static const String CONSTRUCTOR = 'pageBlockBlockQuote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockPullQuote implements PageBlock {
  var text;
  var credit;

  /// A pull quote.
  ///[text] Quote text .
  /// [credit] Quote credit
  PageBlockPullQuote({this.text, this.credit});

  /// Parse from a json
  PageBlockPullQuote.fromJson(Map<String, dynamic> json) {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
    this.credit = RichText.fromJson(json['credit'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'text': this.text.toJson(),
      'credit': this.credit.toJson()
    };
  }

  static const String CONSTRUCTOR = 'pageBlockPullQuote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockAnimation implements PageBlock {
  Animation animation;
  PageBlockCaption caption;
  bool needAutoplay;

  /// An animation.
  ///[animation] Animation file; may be null .
  /// [caption] Animation caption .
  /// [needAutoplay] True, if the animation should be played automatically
  PageBlockAnimation({this.animation, this.caption, this.needAutoplay});

  /// Parse from a json
  PageBlockAnimation.fromJson(Map<String, dynamic> json) {
    this.animation =
        Animation.fromJson(json['animation'] ?? <String, dynamic>{});
    this.caption =
        PageBlockCaption.fromJson(json['caption'] ?? <String, dynamic>{});
    this.needAutoplay = json['need_autoplay'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'animation': this.animation.toJson(),
      'caption': this.caption.toJson(),
      'need_autoplay': this.needAutoplay
    };
  }

  static const String CONSTRUCTOR = 'pageBlockAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockAudio implements PageBlock {
  Audio audio;
  PageBlockCaption caption;

  /// An audio file.
  ///[audio] Audio file; may be null .
  /// [caption] Audio file caption
  PageBlockAudio({this.audio, this.caption});

  /// Parse from a json
  PageBlockAudio.fromJson(Map<String, dynamic> json) {
    this.audio = Audio.fromJson(json['audio'] ?? <String, dynamic>{});
    this.caption =
        PageBlockCaption.fromJson(json['caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'audio': this.audio.toJson(),
      'caption': this.caption.toJson()
    };
  }

  static const String CONSTRUCTOR = 'pageBlockAudio';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockPhoto implements PageBlock {
  Photo photo;
  PageBlockCaption caption;
  String url;

  /// A photo.
  ///[photo] Photo file; may be null .
  /// [caption] Photo caption .
  /// [url] URL that needs to be opened when the photo is clicked
  PageBlockPhoto({this.photo, this.caption, this.url});

  /// Parse from a json
  PageBlockPhoto.fromJson(Map<String, dynamic> json) {
    this.photo = Photo.fromJson(json['photo'] ?? <String, dynamic>{});
    this.caption =
        PageBlockCaption.fromJson(json['caption'] ?? <String, dynamic>{});
    this.url = json['url'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'photo': this.photo.toJson(),
      'caption': this.caption.toJson(),
      'url': this.url
    };
  }

  static const String CONSTRUCTOR = 'pageBlockPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockVideo implements PageBlock {
  Video video;
  PageBlockCaption caption;
  bool needAutoplay;
  bool isLooped;

  /// A video.
  ///[video] Video file; may be null .
  /// [caption] Video caption .
  /// [needAutoplay] True, if the video should be played automatically .
  /// [isLooped] True, if the video should be looped
  PageBlockVideo({this.video, this.caption, this.needAutoplay, this.isLooped});

  /// Parse from a json
  PageBlockVideo.fromJson(Map<String, dynamic> json) {
    this.video = Video.fromJson(json['video'] ?? <String, dynamic>{});
    this.caption =
        PageBlockCaption.fromJson(json['caption'] ?? <String, dynamic>{});
    this.needAutoplay = json['need_autoplay'];
    this.isLooped = json['is_looped'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'video': this.video.toJson(),
      'caption': this.caption.toJson(),
      'need_autoplay': this.needAutoplay,
      'is_looped': this.isLooped
    };
  }

  static const String CONSTRUCTOR = 'pageBlockVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockCover implements PageBlock {
  var cover;

  /// A page cover.
  ///[cover] Cover
  PageBlockCover({this.cover});

  /// Parse from a json
  PageBlockCover.fromJson(Map<String, dynamic> json) {
    this.cover = PageBlock.fromJson(json['cover'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'cover': this.cover.toJson()};
  }

  static const String CONSTRUCTOR = 'pageBlockCover';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockEmbedded implements PageBlock {
  String url;
  String html;
  Photo posterPhoto;
  int width;
  int height;
  PageBlockCaption caption;
  bool isFullWidth;
  bool allowScrolling;

  /// An embedded web page.
  ///[url] Web page URL, if available .
  /// [html] HTML-markup of the embedded page .
  /// [posterPhoto] Poster photo, if available; may be null .
  /// [width] Block width, 0 if unknown .
  /// [height] Block height, 0 if unknown .
  /// [caption] Block caption .
  /// [isFullWidth] True, if the block should be full width .
  /// [allowScrolling] True, if scrolling should be allowed
  PageBlockEmbedded(
      {this.url,
      this.html,
      this.posterPhoto,
      this.width,
      this.height,
      this.caption,
      this.isFullWidth,
      this.allowScrolling});

  /// Parse from a json
  PageBlockEmbedded.fromJson(Map<String, dynamic> json) {
    this.url = json['url'];
    this.html = json['html'];
    this.posterPhoto =
        Photo.fromJson(json['poster_photo'] ?? <String, dynamic>{});
    this.width = json['width'];
    this.height = json['height'];
    this.caption =
        PageBlockCaption.fromJson(json['caption'] ?? <String, dynamic>{});
    this.isFullWidth = json['is_full_width'];
    this.allowScrolling = json['allow_scrolling'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'url': this.url,
      'html': this.html,
      'poster_photo': this.posterPhoto.toJson(),
      'width': this.width,
      'height': this.height,
      'caption': this.caption.toJson(),
      'is_full_width': this.isFullWidth,
      'allow_scrolling': this.allowScrolling
    };
  }

  static const String CONSTRUCTOR = 'pageBlockEmbedded';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockEmbeddedPost implements PageBlock {
  String url;
  String author;
  Photo authorPhoto;
  int date;
  List pageBlocks;
  PageBlockCaption caption;

  /// An embedded post.
  ///[url] Web page URL .
  /// [author] Post author .
  /// [authorPhoto] Post author photo .
  /// [date] Point in time (Unix timestamp) when the post was created; 0 if unknown .
  /// [pageBlocks] Post content .
  /// [caption] Post caption
  PageBlockEmbeddedPost(
      {this.url,
      this.author,
      this.authorPhoto,
      this.date,
      this.pageBlocks,
      this.caption});

  /// Parse from a json
  PageBlockEmbeddedPost.fromJson(Map<String, dynamic> json) {
    this.url = json['url'];
    this.author = json['author'];
    this.authorPhoto =
        Photo.fromJson(json['author_photo'] ?? <String, dynamic>{});
    this.date = json['date'];
    this.pageBlocks = (json['page_blocks'] ?? [])
        .map((listValue) => PageBlock.fromJson(listValue))
        .toList();
    this.caption =
        PageBlockCaption.fromJson(json['caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'url': this.url,
      'author': this.author,
      'author_photo': this.authorPhoto.toJson(),
      'date': this.date,
      'page_blocks':
          this.pageBlocks.map((listItem) => listItem.toJson()).toList(),
      'caption': this.caption.toJson()
    };
  }

  static const String CONSTRUCTOR = 'pageBlockEmbeddedPost';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockCollage implements PageBlock {
  List pageBlocks;
  PageBlockCaption caption;

  /// A collage.
  ///[pageBlocks] Collage item contents .
  /// [caption] Block caption
  PageBlockCollage({this.pageBlocks, this.caption});

  /// Parse from a json
  PageBlockCollage.fromJson(Map<String, dynamic> json) {
    this.pageBlocks = (json['page_blocks'] ?? [])
        .map((listValue) => PageBlock.fromJson(listValue))
        .toList();
    this.caption =
        PageBlockCaption.fromJson(json['caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'page_blocks':
          this.pageBlocks.map((listItem) => listItem.toJson()).toList(),
      'caption': this.caption.toJson()
    };
  }

  static const String CONSTRUCTOR = 'pageBlockCollage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockSlideshow implements PageBlock {
  List pageBlocks;
  PageBlockCaption caption;

  /// A slideshow.
  ///[pageBlocks] Slideshow item contents .
  /// [caption] Block caption
  PageBlockSlideshow({this.pageBlocks, this.caption});

  /// Parse from a json
  PageBlockSlideshow.fromJson(Map<String, dynamic> json) {
    this.pageBlocks = (json['page_blocks'] ?? [])
        .map((listValue) => PageBlock.fromJson(listValue))
        .toList();
    this.caption =
        PageBlockCaption.fromJson(json['caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'page_blocks':
          this.pageBlocks.map((listItem) => listItem.toJson()).toList(),
      'caption': this.caption.toJson()
    };
  }

  static const String CONSTRUCTOR = 'pageBlockSlideshow';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockChatLink implements PageBlock {
  String title;
  ChatPhoto photo;
  String username;

  /// A link to a chat.
  ///[title] Chat title .
  /// [photo] Chat photo; may be null .
  /// [username] Chat username, by which all other information about the chat should be resolved
  PageBlockChatLink({this.title, this.photo, this.username});

  /// Parse from a json
  PageBlockChatLink.fromJson(Map<String, dynamic> json) {
    this.title = json['title'];
    this.photo = ChatPhoto.fromJson(json['photo'] ?? <String, dynamic>{});
    this.username = json['username'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'title': this.title,
      'photo': this.photo.toJson(),
      'username': this.username
    };
  }

  static const String CONSTRUCTOR = 'pageBlockChatLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockTable implements PageBlock {
  var caption;
  List<List<PageBlockTableCell>> cells;
  bool isBordered;
  bool isStriped;

  /// A table.
  ///[caption] Table caption .
  /// [cells] Table cells .
  /// [isBordered] True, if the table is bordered .
  /// [isStriped] True, if the table is striped
  PageBlockTable({this.caption, this.cells, this.isBordered, this.isStriped});

  /// Parse from a json
  PageBlockTable.fromJson(Map<String, dynamic> json) {
    this.caption = RichText.fromJson(json['caption'] ?? <String, dynamic>{});
    this.cells = (json['cells'] ?? [[]])
        .map((l) => l
            .map((listValue) => PageBlockTableCell.fromJson(listValue))
            .toList())
        .toList();
    this.isBordered = json['is_bordered'];
    this.isStriped = json['is_striped'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'caption': this.caption.toJson(),
      'cells': this
          .cells
          .map((l) => l.map((listItem) => listItem.toJson()).toList())
          .toList(),
      'is_bordered': this.isBordered,
      'is_striped': this.isStriped
    };
  }

  static const String CONSTRUCTOR = 'pageBlockTable';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockDetails implements PageBlock {
  var header;
  List pageBlocks;
  bool isOpen;

  /// A collapsible block.
  ///[header] Always visible heading for the block .
  /// [pageBlocks] Block contents .
  /// [isOpen] True, if the block is open by default
  PageBlockDetails({this.header, this.pageBlocks, this.isOpen});

  /// Parse from a json
  PageBlockDetails.fromJson(Map<String, dynamic> json) {
    this.header = RichText.fromJson(json['header'] ?? <String, dynamic>{});
    this.pageBlocks = (json['page_blocks'] ?? [])
        .map((listValue) => PageBlock.fromJson(listValue))
        .toList();
    this.isOpen = json['is_open'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'header': this.header.toJson(),
      'page_blocks':
          this.pageBlocks.map((listItem) => listItem.toJson()).toList(),
      'is_open': this.isOpen
    };
  }

  static const String CONSTRUCTOR = 'pageBlockDetails';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockRelatedArticles implements PageBlock {
  var header;
  List<PageBlockRelatedArticle> articles;

  /// Related articles.
  ///[header] Block header .
  /// [articles] List of related articles
  PageBlockRelatedArticles({this.header, this.articles});

  /// Parse from a json
  PageBlockRelatedArticles.fromJson(Map<String, dynamic> json) {
    this.header = RichText.fromJson(json['header'] ?? <String, dynamic>{});
    this.articles = (json['articles'] ?? [])
        .map((listValue) => PageBlockRelatedArticle.fromJson(listValue))
        .toList();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'header': this.header.toJson(),
      'articles': this.articles.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = 'pageBlockRelatedArticles';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockMap implements PageBlock {
  Location location;
  int zoom;
  int width;
  int height;
  PageBlockCaption caption;

  /// A map.
  ///[location] Location of the map center .
  /// [zoom] Map zoom level .
  /// [width] Map width .
  /// [height] Map height .
  /// [caption] Block caption
  PageBlockMap(
      {this.location, this.zoom, this.width, this.height, this.caption});

  /// Parse from a json
  PageBlockMap.fromJson(Map<String, dynamic> json) {
    this.location = Location.fromJson(json['location'] ?? <String, dynamic>{});
    this.zoom = json['zoom'];
    this.width = json['width'];
    this.height = json['height'];
    this.caption =
        PageBlockCaption.fromJson(json['caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'location': this.location.toJson(),
      'zoom': this.zoom,
      'width': this.width,
      'height': this.height,
      'caption': this.caption.toJson()
    };
  }

  static const String CONSTRUCTOR = 'pageBlockMap';

  @override
  String getConstructor() => CONSTRUCTOR;
}
