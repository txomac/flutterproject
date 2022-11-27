class Product {
  String nom;
  String description;
  num prix;
  String image;
  String categorie;
  num rating;

  Product(this.nom, this.description, this.prix, this.image, this.categorie,
      this.rating);

  //{
  // "id":1,
  // "title":"Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
  // "price":109.95,
  // "description":"Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
  // "category":"men's clothing",
  // "image":"https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
  // "rating":{"rate":3.9,"count":120}
  // }
  Product.fromJson(Map<String, dynamic> json)
      : nom = json["title"],
        description = json["description"],
        prix = json["price"],
        image = json["image"],
        categorie = json["category"],
        rating = json["rating"]["rate"];

  String displayPriceInEuro() => "$prix €";

  double getRating() {
    return rating.toDouble();
  }

  set setRating(num value) {
    rating = value;
  }
}
