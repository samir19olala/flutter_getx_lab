class Patisserie {
  final String nom;
  final List<String> ingredients;
  final double prix;
  final int quantiteDisponible;
  final String? imageUrl;  // <-- nouveau champ imageUrl, optionnel

  Patisserie({
    required this.nom,
    required this.ingredients,
    required this.prix,
    required this.quantiteDisponible,
    this.imageUrl,
  });

  factory Patisserie.fromJson(Map<String, dynamic> json) {
    return Patisserie(
      nom: json['nom'],
      ingredients: List<String>.from(json['ingredients']),
      prix: (json['prix'] as num).toDouble(),
      quantiteDisponible: json['quantite_disponible'],
      imageUrl: json['imageUrl'], // récupération du champ imageUrl
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nom': nom,
      'ingredients': ingredients,
      'prix': prix,
      'quantite_disponible': quantiteDisponible,
      'imageUrl': imageUrl,
    };
  }
}
