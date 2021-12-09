class Recipes {
  String label;
  String imgUrl;

  Recipes(this.label, this.imgUrl);

  static List<Recipes> recipes = [
    Recipes("Spagetti", "assets/spagetti.webp"),
    Recipes("pizza", "assets/spagetti.webp"),
    Recipes("tomato soup", "assets/spagetti.webp"),
    Recipes("chocolate", "assets/spagetti.webp"),
    Recipes("taco salat", "assets/spagetti.webp"),
    Recipes("grilled cheese", "assets/spagetti.webp"),
  ];
}