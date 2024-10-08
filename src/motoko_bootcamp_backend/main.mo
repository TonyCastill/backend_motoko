import Text "mo:base/Text";
import Float "mo:base/Float";
actor {
  let PI = 3.1416;
  var _name ="";

  public func setName(name: Text){
    _name := name;
  };

  public query func getName(): async Text{
    return "Tu nombre es " # _name;
  };
  public query func getPI() : async Text{
       return "El número PI es igual a " # Float.toText(PI);
  };
 
};
