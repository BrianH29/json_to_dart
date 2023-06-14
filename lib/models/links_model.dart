class LinksModel {
  final List<String>? homepage, blockchainSite, officialForumUrl;

  LinksModel({
    required this.homepage,
    required this.blockchainSite,
    required this.officialForumUrl,
  });

  factory LinksModel.fromJson(Map<String, dynamic> json) {
    var homepage = json['homepage'];
    var blockchainSite = json['blockchain_site'];

    return LinksModel(
      homepage: List<String>.from(homepage),
      blockchainSite: List<String>.from(blockchainSite),
      officialForumUrl: json['official_forum_url'].cast<String>(),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['homepage'] = homepage;
    data['blockchain_site'] = blockchainSite;
    data['official_forum_url'] = officialForumUrl;

    return data;
  }
}
