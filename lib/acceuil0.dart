// Importation des packages nécessaires pour cette page
import 'package:flutter/material.dart'; // package pour les widgets de l'interface utilisateur
import 'package:lottie/lottie.dart'; // package pour l'animation de Lottie
import 'package:restotaff/connexion-inscription/login-page.dart'; // fichier de la page de connexion
import 'connexion-inscription/Register-page.dart'; // fichier de la page d'inscription

// Création d'un widget Stateful pour la page Loading
class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);
  @override
  State<Loading> createState() => _LoadingState();
}

// Création d'un état pour le widget Loading
class _LoadingState extends State<Loading> {

  // Méthode qui construit l'interface utilisateur
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Couleur de fond de l'écran
      backgroundColor:Color(0xffe6e6e6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Conteneur pour l'image en haut de la page
            Container(
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent, // Couleur de fond
                image: DecorationImage(
                  image: AssetImage('asset/ter.png'), // Image
                  fit: BoxFit.cover, // Ajuster l'image pour couvrir tout le conteneur
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0), // Coins arrondis en bas à gauche
                  bottomRight: Radius.circular(30.0), // Coins arrondis en bas à droite
                ),
                border: Border.all(
                  color: Colors.deepPurple, // Couleur de la bordure
                  width: 1.0, // Largeur de la bordure
                ),
              ),
              height: 520, // Hauteur du conteneur
              width: MediaQuery.of(context).size.width, // Largeur du conteneur = largeur de l'écran
            ),
            SizedBox(height: 40,), // Espace vide
            Text("Nom-App",style: TextStyle(fontSize: 30),), // Titre de l'application
            SizedBox(height: 20,), // Espace vide
            Divider(height: 10,), // Ligne de séparation
            SizedBox(height: 20,), // Espace vide
            Text("Description",style: TextStyle(fontSize: 20)), // Description de l'application
            SizedBox(height: 20,), // Espace vide
            Divider(height: 10,), // Ligne de séparation
            SizedBox(height: 165,), // Espace vide
            // Conteneur pour les boutons d'inscription et de connexion
            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => acceuil1())); // Aller à la page d'accueil 1

              },
              child: Container(
                height: 80, // Hauteur du conteneur
                width: 400, // Largeur du conteneur
                decoration: BoxDecoration(
                  color: Color(0xffe6e6e6), // Couleur de fond
                  borderRadius: BorderRadius.all(
                    Radius.circular(20), // Coins arrondis
                  ),
                  border: Border.all(
                    color: Colors.white, // Couleur de la bordure
                    width: 1.0, // Largeur de la bordure
                  ),
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => acceuill2()));

                      },
                      child: Container(
                        width: 200,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white70,

                        ),
                        child: Center(
                          child: Text("Inscription",style: TextStyle(fontSize: 20),),
                        ),
                      ),
                    ),

                    SizedBox(width: 60,),
                    Center(
                      child: Text("Connexion",style: TextStyle(fontSize: 20)),
                    )

                  ],
                ),
              ),
            )
      ],
        ),
      ),
    );
  }
}
