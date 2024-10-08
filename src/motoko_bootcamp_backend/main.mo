import Text "mo:base/Text";
import Float "mo:base/Float";

//Import Array
import Array "mo:base/Array";
import Nat "mo:base/Nat";
import List "mo:base/List";

actor {
  //Array
  //una vez iniciados, no se puede modififcar tamaño
  //Inicializa el array con naturales
  var myArray:[Nat] = [1,2,3,4,5];


  //Inicia un array de 5 elementos con 0s
  var Array2= Array.init<Nat>(5, 0);

  // Función query que retorna el arreglo de naturales
  public query func getMyArray():async[Nat] {
      return myArray;
  };

  //Tuplas
  // combinacioes de tipos de datos
  var myTupple: (Nat,Text) = (1,"Texto");
  var myUnit = (); // La unidad
  public func test(): (){
    // No regresa nada
    // Do nothing
  };


  //Listas
  //Conjunto de datos que puede crecer
  var myList: List.List<Nat> = List.nil<Nat>();
  // Empujar un elemento a la lista
  /**
    Ignore porque al empujar, se crea una nueva lista
    y en este caso no se necesita la lista
  */
  ignore List.push<Nat>(23,myList);

  //Obtener el primer elemento de la lista
  var listElement = List.get(myList,0);

};

//DOCUENTATION
//https://internetcomputer.org/docs/current/motoko/main/getting-started/basic-concepts