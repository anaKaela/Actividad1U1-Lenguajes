class Tarea {
  String titulo;
  String descripcion;
  bool completa;

  // Constructor
  Tarea(this.titulo, this.descripcion, {this.completa = false});

  // Método para marcar la tarea como completada
  void marcarComoCompletada() {
    completa = true;
  }

  // Método para representar la tarea como cadena
  @override
  String toString() {
    return 'Tarea: $titulo\nDescripción: $descripcion\nEstado: ${completa ? 'Completada' : 'Incompleta'}';
  }
}

class ListaDeTareas {
  List<Tarea> tareas = [];

  // Método para agregar una tarea a la lista
  void agregarTarea(Tarea tarea) {
    tareas.add(tarea);
  }

  // Método para eliminar una tarea de la lista
  void eliminarTarea(String titulo) {
    tareas.removeWhere((tarea) => tarea.titulo == titulo);
  }

  // Método para marcar una tarea como completada
  void marcarTareaComoCompletada(String titulo) {
    for (var tarea in tareas) {
      if (tarea.titulo == titulo) {
        tarea.marcarComoCompletada();
        break;
      }
    }
  }

  // Método para mostrar todas las tareas
  void mostrarTareas() {
    for (var tarea in tareas) {
      print(tarea);
    }
  }
}

void main() {
  // Crear una instancia de ListaDeTareas
  ListaDeTareas listaDeTareas = ListaDeTareas();

  // Agregar tareas a la lista
  listaDeTareas.agregarTarea(Tarea('procrastinar', 'ver feisbu'));
  listaDeTareas.agregarTarea(Tarea('Estudiar Dart', 'Revisar los conceptos de clases y objetos'));
  listaDeTareas.agregarTarea(Tarea('Hacer ejercicio', 'Correr 5 km en el parque'));

  // Mostrar todas las tareas
  print('\nLista de tareas:');
  listaDeTareas.mostrarTareas();

  // Marcar una tarea como completada
  listaDeTareas.marcarTareaComoCompletada('Hacer ejercicio');

  // Eliminar una tarea
  listaDeTareas.eliminarTarea('Estudiar Dart');

  // Mostrar todas las tareas después de las modificaciones
  print('\nLista de tareas después de las modificaciones:');
  listaDeTareas.mostrarTareas();
}
