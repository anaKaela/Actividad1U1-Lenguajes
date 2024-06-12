
class Circulo {
  double radio;
  String color;

  // Constructor
  Circulo(this.radio, this.color);

  // Método para calcular el área del círculo
  double calcularArea() {
    return 3.1416 * radio * radio;
  }

  // Método para calcular el perímetro del círculo
  double calcularPerimetro() {   
    return 2 * 3.1416 * radio;
  }
}
void main() {
  
  // Crear una instancia de la clase Circulo
  Circulo circulo = Circulo(4.0, 'Magenta');
  print('');
  // Imprimir el área y el perímetro del círculo
  print('Color del círculo: ${circulo.color}');
  print('Radio del círculo: ${circulo.radio}');
  print('Área del círculo: ${circulo.calcularArea()}');
  print('Perímetro del círculo: ${circulo.calcularPerimetro()}');

}