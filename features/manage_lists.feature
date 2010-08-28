#language: es
Característica: Administrar una lista
  Para agrupar las cosas importantes que tengo que hacer sobre un tema
  Como un Usuario 
  Yo quiero Administrar mis listas 
  
  Antecedentes:
    Dado que estoy registrado como usuario

  Escenario: Usuario crea una nueva lista
    Cuando creo un nueva lista
    Entonces se registra el nombre de la lista y se asocia conmigo
  
  Escenario: Usuario actualiza una lista
    Dado que la lista esta asociada conmigo
    Cuando accedo a editar la lista
    Entonces se actualizan los datos que haya proporcionado