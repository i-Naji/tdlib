part of '../tdapi.dart';

class PageBlock extends TdObject {
  

  /// Describes a block of an instant view web page
  PageBlock();

  /// a PageBlock return type can be :
  /// * PageBlockTitle
  /// * PageBlockSubtitle
  /// * PageBlockAuthorDate
  /// * PageBlockHeader
  /// * PageBlockSubheader
  /// * PageBlockKicker
  /// * PageBlockParagraph
  /// * PageBlockPreformatted
  /// * PageBlockFooter
  /// * PageBlockDivider
  /// * PageBlockAnchor
  /// * PageBlockList
  /// * PageBlockBlockQuote
  /// * PageBlockPullQuote
  /// * PageBlockAnimation
  /// * PageBlockAudio
  /// * PageBlockPhoto
  /// * PageBlockVideo
  /// * PageBlockVoiceNote
  /// * PageBlockCover
  /// * PageBlockEmbedded
  /// * PageBlockEmbeddedPost
  /// * PageBlockCollage
  /// * PageBlockSlideshow
  /// * PageBlockChatLink
  /// * PageBlockTable
  /// * PageBlockDetails
  /// * PageBlockRelatedArticles
  /// * PageBlockMap
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
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'pageBlock';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockTitle extends PageBlock {
  RichText title;

  /// The title of a page. 
  /// [title] Title
  PageBlockTitle({this.title});

  /// Parse from a json
  PageBlockTitle.fromJson(Map<String, dynamic> json)  {
    this.title = RichText.fromJson(json['title'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title == null ? null : this.title.toJson(),
    };
  }

  static const CONSTRUCTOR = 'pageBlockTitle';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockSubtitle extends PageBlock {
  RichText subtitle;

  /// The subtitle of a page. 
  /// [subtitle] Subtitle
  PageBlockSubtitle({this.subtitle});

  /// Parse from a json
  PageBlockSubtitle.fromJson(Map<String, dynamic> json)  {
    this.subtitle = RichText.fromJson(json['subtitle'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "subtitle": this.subtitle == null ? null : this.subtitle.toJson(),
    };
  }

  static const CONSTRUCTOR = 'pageBlockSubtitle';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockAuthorDate extends PageBlock {
  RichText author;
  int publishDate;

  /// The author and publishing date of a page. 
  /// [author] Author . 
  /// [publishDate] Point in time (Unix timestamp) when the article was published; 0 if unknown
  PageBlockAuthorDate({this.author,
    this.publishDate});

  /// Parse from a json
  PageBlockAuthorDate.fromJson(Map<String, dynamic> json)  {
    this.author = RichText.fromJson(json['author'] ?? <String, dynamic>{});
    this.publishDate = json['publish_date'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "author": this.author == null ? null : this.author.toJson(),
      "publish_date": this.publishDate,
    };
  }

  static const CONSTRUCTOR = 'pageBlockAuthorDate';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockHeader extends PageBlock {
  RichText header;

  /// A header. 
  /// [header] Header
  PageBlockHeader({this.header});

  /// Parse from a json
  PageBlockHeader.fromJson(Map<String, dynamic> json)  {
    this.header = RichText.fromJson(json['header'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "header": this.header == null ? null : this.header.toJson(),
    };
  }

  static const CONSTRUCTOR = 'pageBlockHeader';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockSubheader extends PageBlock {
  RichText subheader;

  /// A subheader. 
  /// [subheader] Subheader
  PageBlockSubheader({this.subheader});

  /// Parse from a json
  PageBlockSubheader.fromJson(Map<String, dynamic> json)  {
    this.subheader = RichText.fromJson(json['subheader'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "subheader": this.subheader == null ? null : this.subheader.toJson(),
    };
  }

  static const CONSTRUCTOR = 'pageBlockSubheader';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockKicker extends PageBlock {
  RichText kicker;

  /// A kicker. 
  /// [kicker] Kicker
  PageBlockKicker({this.kicker});

  /// Parse from a json
  PageBlockKicker.fromJson(Map<String, dynamic> json)  {
    this.kicker = RichText.fromJson(json['kicker'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "kicker": this.kicker == null ? null : this.kicker.toJson(),
    };
  }

  static const CONSTRUCTOR = 'pageBlockKicker';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockParagraph extends PageBlock {
  RichText text;

  /// A text paragraph. 
  /// [text] Paragraph text
  PageBlockParagraph({this.text});

  /// Parse from a json
  PageBlockParagraph.fromJson(Map<String, dynamic> json)  {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text == null ? null : this.text.toJson(),
    };
  }

  static const CONSTRUCTOR = 'pageBlockParagraph';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockPreformatted extends PageBlock {
  RichText text;
  String language;

  /// A preformatted text paragraph. 
  /// [text] Paragraph text . 
  /// [language] Programming language for which the text should be formatted
  PageBlockPreformatted({this.text,
    this.language});

  /// Parse from a json
  PageBlockPreformatted.fromJson(Map<String, dynamic> json)  {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
    this.language = json['language'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text == null ? null : this.text.toJson(),
      "language": this.language,
    };
  }

  static const CONSTRUCTOR = 'pageBlockPreformatted';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockFooter extends PageBlock {
  RichText footer;

  /// The footer of a page. 
  /// [footer] Footer
  PageBlockFooter({this.footer});

  /// Parse from a json
  PageBlockFooter.fromJson(Map<String, dynamic> json)  {
    this.footer = RichText.fromJson(json['footer'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "footer": this.footer == null ? null : this.footer.toJson(),
    };
  }

  static const CONSTRUCTOR = 'pageBlockFooter';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockDivider extends PageBlock {
  

  /// An empty block separating a page
  PageBlockDivider();

  /// Parse from a json
  PageBlockDivider.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'pageBlockDivider';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockAnchor extends PageBlock {
  String name;

  /// An invisible anchor on a page, which can be used in a URL to open the page from the specified anchor. 
  /// [name] Name of the anchor
  PageBlockAnchor({this.name});

  /// Parse from a json
  PageBlockAnchor.fromJson(Map<String, dynamic> json)  {
    this.name = json['name'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "name": this.name,
    };
  }

  static const CONSTRUCTOR = 'pageBlockAnchor';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockList extends PageBlock {
  List<PageBlockListItem> items;

  /// A list of data blocks. 
  /// [items] The items of the list
  PageBlockList({this.items});

  /// Parse from a json
  PageBlockList.fromJson(Map<String, dynamic> json)  {
    this.items = List<PageBlockListItem>.from((json['items'] ?? []).map((item) => PageBlockListItem.fromJson(item ?? <String, dynamic>{})).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "items": this.items.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'pageBlockList';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockBlockQuote extends PageBlock {
  RichText text;
  RichText credit;

  /// A block quote. 
  /// [text] Quote text . 
  /// [credit] Quote credit
  PageBlockBlockQuote({this.text,
    this.credit});

  /// Parse from a json
  PageBlockBlockQuote.fromJson(Map<String, dynamic> json)  {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
    this.credit = RichText.fromJson(json['credit'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text == null ? null : this.text.toJson(),
      "credit": this.credit == null ? null : this.credit.toJson(),
    };
  }

  static const CONSTRUCTOR = 'pageBlockBlockQuote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockPullQuote extends PageBlock {
  RichText text;
  RichText credit;

  /// A pull quote. 
  /// [text] Quote text . 
  /// [credit] Quote credit
  PageBlockPullQuote({this.text,
    this.credit});

  /// Parse from a json
  PageBlockPullQuote.fromJson(Map<String, dynamic> json)  {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
    this.credit = RichText.fromJson(json['credit'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text == null ? null : this.text.toJson(),
      "credit": this.credit == null ? null : this.credit.toJson(),
    };
  }

  static const CONSTRUCTOR = 'pageBlockPullQuote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockAnimation extends PageBlock {
  Animation animation;
  PageBlockCaption caption;
  bool needAutoplay;

  /// An animation. 
  /// [animation] Animation file; may be null . 
  /// [caption] Animation caption . 
  /// [needAutoplay] True, if the animation should be played automatically
  PageBlockAnimation({this.animation,
    this.caption,
    this.needAutoplay});

  /// Parse from a json
  PageBlockAnimation.fromJson(Map<String, dynamic> json)  {
    this.animation = Animation.fromJson(json['animation'] ?? <String, dynamic>{});
    this.caption = PageBlockCaption.fromJson(json['caption'] ?? <String, dynamic>{});
    this.needAutoplay = json['need_autoplay'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "animation": this.animation == null ? null : this.animation.toJson(),
      "caption": this.caption == null ? null : this.caption.toJson(),
      "need_autoplay": this.needAutoplay,
    };
  }

  static const CONSTRUCTOR = 'pageBlockAnimation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockAudio extends PageBlock {
  Audio audio;
  PageBlockCaption caption;

  /// An audio file. 
  /// [audio] Audio file; may be null . 
  /// [caption] Audio file caption
  PageBlockAudio({this.audio,
    this.caption});

  /// Parse from a json
  PageBlockAudio.fromJson(Map<String, dynamic> json)  {
    this.audio = Audio.fromJson(json['audio'] ?? <String, dynamic>{});
    this.caption = PageBlockCaption.fromJson(json['caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "audio": this.audio == null ? null : this.audio.toJson(),
      "caption": this.caption == null ? null : this.caption.toJson(),
    };
  }

  static const CONSTRUCTOR = 'pageBlockAudio';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockPhoto extends PageBlock {
  Photo photo;
  PageBlockCaption caption;
  String url;

  /// A photo. 
  /// [photo] Photo file; may be null . 
  /// [caption] Photo caption . 
  /// [url] URL that needs to be opened when the photo is clicked
  PageBlockPhoto({this.photo,
    this.caption,
    this.url});

  /// Parse from a json
  PageBlockPhoto.fromJson(Map<String, dynamic> json)  {
    this.photo = Photo.fromJson(json['photo'] ?? <String, dynamic>{});
    this.caption = PageBlockCaption.fromJson(json['caption'] ?? <String, dynamic>{});
    this.url = json['url'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "photo": this.photo == null ? null : this.photo.toJson(),
      "caption": this.caption == null ? null : this.caption.toJson(),
      "url": this.url,
    };
  }

  static const CONSTRUCTOR = 'pageBlockPhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockVideo extends PageBlock {
  Video video;
  PageBlockCaption caption;
  bool needAutoplay;
  bool isLooped;

  /// A video. 
  /// [video] Video file; may be null . 
  /// [caption] Video caption . 
  /// [needAutoplay] True, if the video should be played automatically . 
  /// [isLooped] True, if the video should be looped
  PageBlockVideo({this.video,
    this.caption,
    this.needAutoplay,
    this.isLooped});

  /// Parse from a json
  PageBlockVideo.fromJson(Map<String, dynamic> json)  {
    this.video = Video.fromJson(json['video'] ?? <String, dynamic>{});
    this.caption = PageBlockCaption.fromJson(json['caption'] ?? <String, dynamic>{});
    this.needAutoplay = json['need_autoplay'];
    this.isLooped = json['is_looped'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "video": this.video == null ? null : this.video.toJson(),
      "caption": this.caption == null ? null : this.caption.toJson(),
      "need_autoplay": this.needAutoplay,
      "is_looped": this.isLooped,
    };
  }

  static const CONSTRUCTOR = 'pageBlockVideo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockVoiceNote extends PageBlock {
  VoiceNote voiceNote;
  PageBlockCaption caption;

  /// A voice note. 
  /// [voiceNote] Voice note; may be null . 
  /// [caption] Voice note caption
  PageBlockVoiceNote({this.voiceNote,
    this.caption});

  /// Parse from a json
  PageBlockVoiceNote.fromJson(Map<String, dynamic> json)  {
    this.voiceNote = VoiceNote.fromJson(json['voice_note'] ?? <String, dynamic>{});
    this.caption = PageBlockCaption.fromJson(json['caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "voice_note": this.voiceNote == null ? null : this.voiceNote.toJson(),
      "caption": this.caption == null ? null : this.caption.toJson(),
    };
  }

  static const CONSTRUCTOR = 'pageBlockVoiceNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockCover extends PageBlock {
  PageBlock cover;

  /// A page cover. 
  /// [cover] Cover
  PageBlockCover({this.cover});

  /// Parse from a json
  PageBlockCover.fromJson(Map<String, dynamic> json)  {
    this.cover = PageBlock.fromJson(json['cover'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "cover": this.cover == null ? null : this.cover.toJson(),
    };
  }

  static const CONSTRUCTOR = 'pageBlockCover';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockEmbedded extends PageBlock {
  String url;
  String html;
  Photo posterPhoto;
  int width;
  int height;
  PageBlockCaption caption;
  bool isFullWidth;
  bool allowScrolling;

  /// An embedded web page. 
  /// [url] Web page URL, if available . 
  /// [html] HTML-markup of the embedded page . 
  /// [posterPhoto] Poster photo, if available; may be null . 
  /// [width] Block width; 0 if unknown . 
  /// [height] Block height; 0 if unknown . 
  /// [caption] Block caption . 
  /// [isFullWidth] True, if the block should be full width . 
  /// [allowScrolling] True, if scrolling should be allowed
  PageBlockEmbedded({this.url,
    this.html,
    this.posterPhoto,
    this.width,
    this.height,
    this.caption,
    this.isFullWidth,
    this.allowScrolling});

  /// Parse from a json
  PageBlockEmbedded.fromJson(Map<String, dynamic> json)  {
    this.url = json['url'];
    this.html = json['html'];
    this.posterPhoto = Photo.fromJson(json['poster_photo'] ?? <String, dynamic>{});
    this.width = json['width'];
    this.height = json['height'];
    this.caption = PageBlockCaption.fromJson(json['caption'] ?? <String, dynamic>{});
    this.isFullWidth = json['is_full_width'];
    this.allowScrolling = json['allow_scrolling'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "url": this.url,
      "html": this.html,
      "poster_photo": this.posterPhoto == null ? null : this.posterPhoto.toJson(),
      "width": this.width,
      "height": this.height,
      "caption": this.caption == null ? null : this.caption.toJson(),
      "is_full_width": this.isFullWidth,
      "allow_scrolling": this.allowScrolling,
    };
  }

  static const CONSTRUCTOR = 'pageBlockEmbedded';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockEmbeddedPost extends PageBlock {
  String url;
  String author;
  Photo authorPhoto;
  int date;
  List<PageBlock> pageBlocks;
  PageBlockCaption caption;

  /// An embedded post. 
  /// [url] Web page URL . 
  /// [author] Post author . 
  /// [authorPhoto] Post author photo; may be null . 
  /// [date] Point in time (Unix timestamp) when the post was created; 0 if unknown . 
  /// [pageBlocks] Post content . 
  /// [caption] Post caption
  PageBlockEmbeddedPost({this.url,
    this.author,
    this.authorPhoto,
    this.date,
    this.pageBlocks,
    this.caption});

  /// Parse from a json
  PageBlockEmbeddedPost.fromJson(Map<String, dynamic> json)  {
    this.url = json['url'];
    this.author = json['author'];
    this.authorPhoto = Photo.fromJson(json['author_photo'] ?? <String, dynamic>{});
    this.date = json['date'];
    this.pageBlocks = List<PageBlock>.from((json['page_blocks'] ?? []).map((item) => PageBlock.fromJson(item ?? <String, dynamic>{})).toList());
    this.caption = PageBlockCaption.fromJson(json['caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "url": this.url,
      "author": this.author,
      "author_photo": this.authorPhoto == null ? null : this.authorPhoto.toJson(),
      "date": this.date,
      "page_blocks": this.pageBlocks.map((i) => i.toJson()).toList(),
      "caption": this.caption == null ? null : this.caption.toJson(),
    };
  }

  static const CONSTRUCTOR = 'pageBlockEmbeddedPost';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockCollage extends PageBlock {
  List<PageBlock> pageBlocks;
  PageBlockCaption caption;

  /// A collage. 
  /// [pageBlocks] Collage item contents . 
  /// [caption] Block caption
  PageBlockCollage({this.pageBlocks,
    this.caption});

  /// Parse from a json
  PageBlockCollage.fromJson(Map<String, dynamic> json)  {
    this.pageBlocks = List<PageBlock>.from((json['page_blocks'] ?? []).map((item) => PageBlock.fromJson(item ?? <String, dynamic>{})).toList());
    this.caption = PageBlockCaption.fromJson(json['caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "page_blocks": this.pageBlocks.map((i) => i.toJson()).toList(),
      "caption": this.caption == null ? null : this.caption.toJson(),
    };
  }

  static const CONSTRUCTOR = 'pageBlockCollage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockSlideshow extends PageBlock {
  List<PageBlock> pageBlocks;
  PageBlockCaption caption;

  /// A slideshow. 
  /// [pageBlocks] Slideshow item contents . 
  /// [caption] Block caption
  PageBlockSlideshow({this.pageBlocks,
    this.caption});

  /// Parse from a json
  PageBlockSlideshow.fromJson(Map<String, dynamic> json)  {
    this.pageBlocks = List<PageBlock>.from((json['page_blocks'] ?? []).map((item) => PageBlock.fromJson(item ?? <String, dynamic>{})).toList());
    this.caption = PageBlockCaption.fromJson(json['caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "page_blocks": this.pageBlocks.map((i) => i.toJson()).toList(),
      "caption": this.caption == null ? null : this.caption.toJson(),
    };
  }

  static const CONSTRUCTOR = 'pageBlockSlideshow';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockChatLink extends PageBlock {
  String title;
  ChatPhotoInfo photo;
  String username;

  /// A link to a chat. 
  /// [title] Chat title . 
  /// [photo] Chat photo; may be null . 
  /// [username] Chat username, by which all other information about the chat should be resolved
  PageBlockChatLink({this.title,
    this.photo,
    this.username});

  /// Parse from a json
  PageBlockChatLink.fromJson(Map<String, dynamic> json)  {
    this.title = json['title'];
    this.photo = ChatPhotoInfo.fromJson(json['photo'] ?? <String, dynamic>{});
    this.username = json['username'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
      "photo": this.photo == null ? null : this.photo.toJson(),
      "username": this.username,
    };
  }

  static const CONSTRUCTOR = 'pageBlockChatLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockTable extends PageBlock {
  RichText caption;
  List<List<PageBlockTableCell>> cells;
  bool isBordered;
  bool isStriped;

  /// A table. 
  /// [caption] Table caption . 
  /// [cells] Table cells . 
  /// [isBordered] True, if the table is bordered . 
  /// [isStriped] True, if the table is striped
  PageBlockTable({this.caption,
    this.cells,
    this.isBordered,
    this.isStriped});

  /// Parse from a json
  PageBlockTable.fromJson(Map<String, dynamic> json)  {
    this.caption = RichText.fromJson(json['caption'] ?? <String, dynamic>{});
    this.cells = List<List<PageBlockTableCell>>.from((json['cells'] ?? []).map((item) => List<PageBlockTableCell>.from((item ?? []).map((innerItem) => PageBlockTableCell.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.isBordered = json['is_bordered'];
    this.isStriped = json['is_striped'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "caption": this.caption == null ? null : this.caption.toJson(),
      "cells": this.cells.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
      "is_bordered": this.isBordered,
      "is_striped": this.isStriped,
    };
  }

  static const CONSTRUCTOR = 'pageBlockTable';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockDetails extends PageBlock {
  RichText header;
  List<PageBlock> pageBlocks;
  bool isOpen;

  /// A collapsible block. 
  /// [header] Always visible heading for the block . 
  /// [pageBlocks] Block contents . 
  /// [isOpen] True, if the block is open by default
  PageBlockDetails({this.header,
    this.pageBlocks,
    this.isOpen});

  /// Parse from a json
  PageBlockDetails.fromJson(Map<String, dynamic> json)  {
    this.header = RichText.fromJson(json['header'] ?? <String, dynamic>{});
    this.pageBlocks = List<PageBlock>.from((json['page_blocks'] ?? []).map((item) => PageBlock.fromJson(item ?? <String, dynamic>{})).toList());
    this.isOpen = json['is_open'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "header": this.header == null ? null : this.header.toJson(),
      "page_blocks": this.pageBlocks.map((i) => i.toJson()).toList(),
      "is_open": this.isOpen,
    };
  }

  static const CONSTRUCTOR = 'pageBlockDetails';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockRelatedArticles extends PageBlock {
  RichText header;
  List<PageBlockRelatedArticle> articles;

  /// Related articles. 
  /// [header] Block header . 
  /// [articles] List of related articles
  PageBlockRelatedArticles({this.header,
    this.articles});

  /// Parse from a json
  PageBlockRelatedArticles.fromJson(Map<String, dynamic> json)  {
    this.header = RichText.fromJson(json['header'] ?? <String, dynamic>{});
    this.articles = List<PageBlockRelatedArticle>.from((json['articles'] ?? []).map((item) => PageBlockRelatedArticle.fromJson(item ?? <String, dynamic>{})).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "header": this.header == null ? null : this.header.toJson(),
      "articles": this.articles.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'pageBlockRelatedArticles';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockMap extends PageBlock {
  Location location;
  int zoom;
  int width;
  int height;
  PageBlockCaption caption;

  /// A map. 
  /// [location] Location of the map center . 
  /// [zoom] Map zoom level . 
  /// [width] Map width . 
  /// [height] Map height . 
  /// [caption] Block caption
  PageBlockMap({this.location,
    this.zoom,
    this.width,
    this.height,
    this.caption});

  /// Parse from a json
  PageBlockMap.fromJson(Map<String, dynamic> json)  {
    this.location = Location.fromJson(json['location'] ?? <String, dynamic>{});
    this.zoom = json['zoom'];
    this.width = json['width'];
    this.height = json['height'];
    this.caption = PageBlockCaption.fromJson(json['caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "location": this.location == null ? null : this.location.toJson(),
      "zoom": this.zoom,
      "width": this.width,
      "height": this.height,
      "caption": this.caption == null ? null : this.caption.toJson(),
    };
  }

  static const CONSTRUCTOR = 'pageBlockMap';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}