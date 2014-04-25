# Gerador de Panfletos em Processing

* Para gerar seus panfletos basta você ter [processing](https://processing.org/download/) rodando no seu sistema.

* Baixe esse repositório
    * `git clone https://github.com/tarrafahc/gerador-panfletos-processing.git`
    * (Opcional) [Link Direto]()

* Abra esse projeto (Arquivo.pde) em seu Processing.

* Altere, adicione as informações que você quer anúnciar no seu panfleto.

```java
void animaInfo() {
  fill(color(24,179,210));
  rect(height/4, 0, height, width - 250, width);
  fill(255);
  text("Evento: Oficina de Stencil", 20, 100);
  text("Ministrante: João Lazaro", 20, 150);
  text("Local: Tarrafa Headquarters", 20, 200);
  text("Site: tarrafa.net", 20, 250);
}
```

* Modifique o código para criar animações diferentes.

# Screenshots

Quando você quiser salvar imagens do seu panfleto. Basta clicar 's' no seu teclado. Por causa dessa função abaixo, você salvará fotos do seu desenho dentro do diretório gerador-panfletos-processing: `Panfleto/data/pics/<<suas_imagens>>`

```java
void keyPressed() {
  if (key == 's') {
    saveFrame("pics/panfleto-######.png");
  }
}
```
