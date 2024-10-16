import Text "mo:base/Text";
import Float "mo:base/Float";

//Import Array
import Array "mo:base/Array";
import Nat "mo:base/Nat";
import List "mo:base/List";

actor {
  //Datos record
  type Profile = { //Clase o tipo de datos personalizado
      username: Text;
      email: Text;
  };

  //Iniciar clase
  /*var profile1 : Profile = {
    username ="Tony";
    email = "starreach33@gmail.com";
  };*/

  var profile1 : ?Profile = null;
  /**
    El ? permite hacer nullable una variable 
  */


  // Metodo para llenar un perfil
  public func setProfile(newProfile: Profile):(){
    profile1 := ?newProfile; 
  };

  public query func getProfile(): async ?Profile {
    return profile1; 
  };
};

//DOCUENTATION
//https://internetcomputer.org/docs/current/motoko/main/getting-started/basic-concepts