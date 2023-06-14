
class Paniers {
  late String uid;
  late String nom_produit;
  late int prix;
  late String image;
  late String Categorie;

  Paniers({required this.uid, required this.nom_produit, required this.prix, required this.image, required this.Categorie});

  Paniers.fromJson(Map<String, dynamic> json){
    uid = json['uid'];
    nom_produit = json['nom'];
    prix = json['prix'];
    image = json['image'];
    Categorie = json['Categorie'];
  }

  Map<String, dynamic> toJson() => {
    'uid': uid,
    'nom': nom_produit,
    'prix': prix,
    'image': image,
    'Categorie': Categorie,
  };
}