import Nat "mo:base/Nat";
import Debug "mo:base/Debug";
import Iter "mo:base/Iter";

actor {
  public query func startLoop(): async () {
    var counter = 0;

    /* o esto
    loop { //Iteraciones
    // Muestra en consola
      Debug.print("Counter: " # Nat.toText(counter));
      counter +=1;

      //Parar loop
      if (counter == 10) {return};
    }
    */
    // o esto
    /*while ( counter < 10){
      Debug.print("Counter: "# Nat.toText(counter));
      counter += 1;
    };*/
    var i = 0;
    for (j in Iter.range(0,9)){
      Debug.print(debug_show(j));
      i +=1;
    };
  };
}