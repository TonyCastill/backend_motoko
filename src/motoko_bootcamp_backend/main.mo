import Random "mo:base/Random";
/*
  Módulo que permite generar números aleatorios

*/

actor {
  var randomNumber: Nat = 0;
  public query func  getCurrentRandomNumber(): async Nat{
    return randomNumber;
  };
  private func getRandomNat(): async (){
    let randomBlob = await Random.blob();
    randomNumber := Random.rangeFrom(8,randomBlob);
  };

  public func generateRandomNat() : (){
    ignore getRandomNat(); // Does not return anything
  };

  public query func guessTheNumber(number:Nat) :async Text{
    if(number!=randomNumber){
      return "Número equivocado";
    };
    return "Le atinaste!";
  }
}