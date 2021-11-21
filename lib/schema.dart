///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class VideoSourceFormatVideoList {
/*
{
  "url": "https://n1.szjal.cn/20210428/lsNZ6QAL/index.m3u8",
  "name": "综艺"
}
*/

  String? url;
  String? name;

  VideoSourceFormatVideoList({
    this.url,
    this.name,
  });
  VideoSourceFormatVideoList.fromJson(Map<String, dynamic> json) {
    url = json["url"]?.toString();
    name = json["name"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["url"] = url;
    data["name"] = name;
    return data;
  }
}

class VideoSourceFormatVideo {
/*
{
  "name": "天空资源",
  "list": [
    {
      "url": "https://n1.szjal.cn/20210428/lsNZ6QAL/index.m3u8",
      "name": "综艺"
    }
  ]
}
*/

  String? name;
  List<VideoSourceFormatVideoList?>? list;

  VideoSourceFormatVideo({
    this.name,
    this.list,
  });
  VideoSourceFormatVideo.fromJson(Map<String, dynamic> json) {
    name = json["name"]?.toString();
    if (json["list"] != null) {
      final v = json["list"];
      final arr0 = <VideoSourceFormatVideoList>[];
      v.forEach((v) {
        arr0.add(VideoSourceFormatVideoList.fromJson(v));
      });
      list = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["name"] = name;
    if (list != null) {
      final v = list;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data["list"] = arr0;
    }
    return data;
  }
}

class VideoSourceFormat {
/*
{
  "video": [
    {
      "name": "天空资源",
      "list": [
        {
          "url": "https://n1.szjal.cn/20210428/lsNZ6QAL/index.m3u8",
          "name": "综艺"
        }
      ]
    }
  ]
}
*/

  List<VideoSourceFormatVideo?>? video;

  VideoSourceFormat({
    this.video,
  });
  VideoSourceFormat.fromJson(Map<String, dynamic> json) {
    if (json["video"] != null) {
      final v = json["video"];
      final arr0 = <VideoSourceFormatVideo>[];
      v.forEach((v) {
        arr0.add(VideoSourceFormatVideo.fromJson(v));
      });
      video = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (video != null) {
      final v = video;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data["video"] = arr0;
    }
    return data;
  }
}
