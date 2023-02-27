class SPFC {
  String nome;
  String urlImage;

  SPFC(this.nome, this.urlImage);

  static List<SPFC> exemplos = [
    SPFC("Morumbi",
        "https://pbs.twimg.com/media/Fp2upYmWIAkXRDp?format=jpg&name=large"),
    SPFC("Uniforme",
        "https://pbs.twimg.com/media/Fp6yY_oXgAE4Icj?format=jpg&name=large"),
    SPFC("Escudo",
        "https://pbs.twimg.com/media/Fpke-oyWIAEYhH-?format=jpg&name=900x900")
  ];
}
