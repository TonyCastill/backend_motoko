import HashMap "mo:base/HashMap";
import Nat "mo:base/Nat";
import Hash "mo:base/Hash";
import Iter "mo:base/Iter";

actor {
  type Profile = {
    username: Text;
    email: Text;
  };

  //Módulo HashMap, dentro está la clase HashMap
  /**
    HashMap es como una lista, pero se puede usar como un diccionario

    El HashMap recibe dos tipos, el primero es el identificador (Nat)
    el segundo es el dato que contiene esa lista (dato tipo Profile)

    En este caso, se inicaliza el HashMap con 5 elementos
  */
  let profiles = HashMap.HashMap<Nat, Profile>(5, Nat.equal, Hash.hash);


  //Devuelve un ID único 
  private func getNextId(): Nat {
    return profiles.size();
    // Solo devuevle el tamaño del ID
  };

  // Función update porque modifica el HashMap
  public func addProfile(newProfile: Profile): () {

    //Agarra el siguiente ID y lo asigna a nextId
    let nextId = getNextId();

    // con put.() agrega un nuevo registro
    // Esto no es una lista, por lo que si se aplica
    // a un elemento que ya tiene un índice, este elemento
    // se sobreescribe
    profiles.put(nextId,newProfile);
  };

  // Función query para lectura
  // Devuelve un array de Profile
  public query func getProfiles(): async [Profile]{
    
    // Obtiene los valores de profiles
    let profileIter = profiles.vals(); // Retorna Iter 


    // Retorna los valores como un array
    return Iter.toArray(profileIter);

  }
}
