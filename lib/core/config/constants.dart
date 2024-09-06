class Items {
  String name;
  String description;


  Items({
    required this.name,
    required this.description,
});

 static List<Items> items = [
   Items(name: "Cesta basica", description: "Da igreja bla bla bla"),
   Items(name: "Maçã", description: "colhido no jardim bla bla bla"),
 ];
}