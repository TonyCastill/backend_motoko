import Nat "mo:base/Nat";
import Debug "mo:base/Debug";
import Iter "mo:base/Iter";
import HashMap "mo:base/HashMap";
import Hash "mo:base/Hash";


actor {
  type Profile = {
    username: Text;
    email: Text;
  };

  let profiles = HashMap.HashMap<Nat, Profile>(5, Nat.equal, Hash.hash);
  private func getNextId(): Nat {
    return profiles.size();
    // Solo devuevle el tamaño del ID
  };

  public func addProfile(newProfile: Profile): () {
    //Agarra el siguiente ID y lo asigna a nextId
    let nextId = getNextId();
    // con put.() agrega un nuevo registro
    // Esto no es una lista, por lo que si se aplica
    // a un elemento que ya tiene un índice, este elemento
    // se sobreescribe
    profiles.put(nextId,newProfile);
  };

  public query func getProfiles(): async [Profile]{
    let profileIter = profiles.vals();

    for (id in profiles.keys()){
      Debug.print("Profile id: " # Nat.toText(id));
    };
    return Iter.toArray(profileIter);
  };
}