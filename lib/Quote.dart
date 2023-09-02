class Quote {
  String? quote;
  String? character;
  String? image;
  String? characterDirection;

  @override
  String toString() =>
      'Quote{quote: $quote, character: $character, image: $image, characterDirection: $characterDirection}';

  Quote(this.quote, this.character, this.image, this.characterDirection);

  Quote.fromJson(Map<String, dynamic> json) {
    quote = json['quote'];
    character = json['character'];
    image = json['image'];
    characterDirection = json['characterDirection'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['quote'] = this.quote;
    data['character'] = this.character;
    data['image'] = this.image;
    data['characterDirection'] = this.characterDirection;
    return data;
  }
}
