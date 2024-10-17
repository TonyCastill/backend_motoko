actor {
  type WeekDays ={
    //Variants 
    // En este caso, la variable day puede adquirir cualquier
    // valor de los siguientes, uno a la vez
    // El # define un variant
    #monday;
    #tuesday;
    #wednesday;
    #thursday;
    #friday;
    #saturday;
    #sunday;
  };

  type Months = {
  // Variants for months of the year
  #january;
  #february;
  #march;
  #april;
  #may;
  #june;
  #july;
  #august;
  #september;
  #october;
  #november;
  #december;
};

  let monday: WeekDays = #monday;

  public query func getWeekDay(day: WeekDays): async Text{
    switch(day){
      case (#monday){return "Monday"};
      case (#tuesday){"tuesday"};
      case (#wednesday){"wednesday"};
      case (#thursday){"Thursday"};
      case (#friday){"Friday"};
      case (#saturday){"Saturday"};
      case (#sunday){"Sunday"};
    };
  };
}