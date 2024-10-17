actor {
  // HEAP MEMORY
  var temporal: Nat = 0;
  //Trabajar con stable memory
  // Persiste a través de los deploys
  stable var persisted: Nat = 0;

  public func setVars(number:Nat): async (){
    temporal := number;
    persisted := number;
  };

  public query func getVars(): async [Nat]{
    return [temporal, persisted];
  };
}