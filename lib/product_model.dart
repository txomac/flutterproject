class Product{
  String nom;
  String description;
  double prix;
  String image;
  String categorie;

  Product(this.nom, this.description, this.prix, this.image, this.categorie);

  String displayPriceInEuro() => "$prix €";
}