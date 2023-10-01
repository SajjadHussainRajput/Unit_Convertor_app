


// ignore_for_file: unused_local_variable

import 'dart:io';

var mainSelections = "";
var childSelections = "";
var restart = false;

void main() {
  do {
    restart = false;
    var myOptions = {
      "1": "Length Conversion",
      "2": "Temperature Conversion",
      "3": "Area Conversion",
      "4": "Weight Conversion",
      "5": "Time Conversion",
    };
    showOptions(myOptions);
  } while (restart);
}

showOptions(Map optionsMap) {
  print("---------------------------------");
  print("Please select one option");
  for (var i = 1; i <= optionsMap.length; i++) {
    print("$i: ${optionsMap["$i"]}");
  }

  mainSelections = stdin.readLineSync()!;
  if (mainSelections == "1") {
    showLengthOptions();
  } 
  
  else if (mainSelections == "2") {
    showTempOptions();
  }
  
   else if (mainSelections == "3") {
    areaOptions();
  }
  
   else if (mainSelections == "4") {
     weightOptions();

  }
  
   else if (mainSelections == "5") {
    timeOptions();
  }
  
  else{
    print("Incorrect Input, Please make selection from above options only");
    showOptions(optionsMap);
  }
}

showLengthOptions() {
  print("---------------------------------");
  print("Please select one option");
  var myOptions = {
    "1": "Meter to kilometers",
    "2": "Kilometer to Meters",
    "3": "feet to Inches",
    "4": "Inches to Feet",
    "5": "Centimeter to Meter",
    "6": "Meter to Centimeter"
  };
  for (var i = 1; i <= myOptions.length; i++) {
    print("$i: ${myOptions["$i"]}");
  }
  childSelections = stdin.readLineSync()!;
  if (childSelections == "1") {
    meterToKilometers();
  } else if (childSelections == "2") {
    kmToMeters();
  } else if (childSelections == "3") {
    feetToInches();
  } else if (childSelections == "4") {
    inchesToFeet();
  } else if (childSelections == "5") {
    cmToMeters();
  } else if (childSelections == "6") {
    metersToCm();
  } else {
    print("Incorrect Input, Please make selection from above options only");
    showLengthOptions();
  }
  restartProgram();
}




//////////////////////////////////   Temp Options/////////////////////////////////////////////////////
showTempOptions() {
  print("---------------------------------");
  print("Please select one option");
  var myOptions = {
    "1": "Fahrenheit to Celcius",
    "2": "Celcius to Fahrenheit",
  };
  for (var i = 1; i <= myOptions.length; i++) {
    print("$i: ${myOptions["$i"]}");
  }
  childSelections = stdin.readLineSync()!;

  if (childSelections == "1") {
    fahrenheitToCelcius();

  } else if (childSelections == "2") {
CelciusTofahrenheit();
  } else {
    print("Incorrect Input, Please make selection from above options only");
    showTempOptions();
  }


 

}


/////////////////////////Area Conversion /////////////////////////////////////
areaOptions() {
  print("---------------------------------");
  print("Please select one option");
  var myOptions = {
    "1": "Square Miles to Square yards",
    "2": "Square Yards to Square Miles",
    "3": "Square Yards to Square Feet",
    "4": "Square Feet to Square Yards",
  
  };
  for (var i = 1; i <= myOptions.length; i++) {
    print("$i: ${myOptions["$i"]}");
  }
  childSelections = stdin.readLineSync()!;
  if (childSelections == "1") {
   squareMilesToSquareyards();
  }
  
   else if (childSelections == "2") {
   squareyardsToSquareMiles();
  }
  
   else if (childSelections == "3") {
   squareYardsToSquareFeet();
  }
  
   else if (childSelections == "4") {
  squareFeetToSquareYards();
  }
  
  else {
    print("Incorrect Input, Please make selection from above options only");
    showLengthOptions();
  }

}





/////////////////////////Weight Conversion  /////////////////////////////////////
weightOptions() {
  print("---------------------------------");
  print("Please select one option");
  var myOptions = {
    "1": "Kg to Grams",
    "2": "Grams to Kg",
    "3": "Pounds to Kg",
    "4": "Kg to Tons",
    "5": "Tons to Kg",
  
  };
  for (var i = 1; i <= myOptions.length; i++) {
    print("$i: ${myOptions["$i"]}");
  }
  childSelections = stdin.readLineSync()!;

  if (childSelections == "1") {
  kilogramstoGrams();

  }
  
   else if (childSelections == "2") {
   gramsTokilograms();
  }
  
   else if (childSelections == "3") {
  poundstoKg();
  }
  
   else if (childSelections == "4") {
 kgtoTons();

  }

  else if (childSelections == "5") {
  tonstoKG();
  }
  
  else {
    print("Incorrect Input, Please make selection from above options only");
    showLengthOptions();
  }

}







/////////////////////////   Time Conversion  /////////////////////////////////////
timeOptions() {
  print("---------------------------------");
  print("Please select one option");
  var myOptions = {
    "1": "Seconds to Minutes",
    "2": "Minutes to Seconds",
    "3": "Minutes to Hours",
    "4": "Seconds to Hours",
    "5": "Milliseconds to Minutes",
    "6": "Milliseconds to Hours",
  
  };
  for (var i = 1; i <= myOptions.length; i++) {
    print("$i: ${myOptions["$i"]}");
  }
  childSelections = stdin.readLineSync()!;

  if (childSelections == "1") {
 SecondstoMinutes();

  }
  
   else if (childSelections == "2") {
   MinutestoHours();
  }
  
   else if (childSelections == "3") {
SecondstoHourss();
  }
  
   else if (childSelections == "4") {


  }

  else if (childSelections == "5") {

  }

  else if (childSelections == "6") {

  }
  
  else {
    print("Incorrect Input, Please make selection from above options only");
    showLengthOptions();
  }

}












/////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////
//MAIN OPTION NUMBER ->  LENGTH CONVERSION
//METER to kilometers
meterToKilometers() {
  int meters = int.parse(stdin.readLineSync()!);
  int km = meters ~/ 1000;
  print("$meters are equal to $km");
}

//Km to Meters
kmToMeters() {
  int km = int.parse(stdin.readLineSync()!);
  int meter = km * 1000;
  print("$km are equal to $meter");
}

//Feet to Inches()
feetToInches() {
  int feet = int.parse(stdin.readLineSync()!);
  int inches = feet * 12;
  print("$feet are equal to $inches");
}

//Inches to Feet
inchesToFeet() {
  int inches = int.parse(stdin.readLineSync()!);
  double feet = inches / 12;
  print("$inches are equal to $feet");
}

//cm to Meters
cmToMeters() {
  int cm = int.parse(stdin.readLineSync()!);
  double meters = cm / 100;
  print("$cm are equal to $meters");
}

//Meters to CM
metersToCm() {
  int meter = int.parse(stdin.readLineSync()!);
  double cm = meter / 100;
  print("$meter are equal to $cm");
}


///////////////////////////////////////////////////////////////////////////////////////////////////////////////

//MAIN OPTION  ->  Temperature Conversion
fahrenheitToCelcius(){
  
 int fahrenheit = int.parse(stdin.readLineSync()!);
 double celsius = (fahrenheit - 32) * 5 / 9;
  print("$fahrenheit degrees Fahrenheit is equal to $celsius degrees Celsius.");

}

// Celcius to Fahrenheit
CelciusTofahrenheit(){
  
 int Celcius = int.parse(stdin.readLineSync()!);
  double fahrenheit = (Celcius * 9 / 5) + 32;
  print("$Celcius degrees Celsius is equal to $fahrenheit degrees Fahrenheit..");

}




///////////////////////////////////////////////////////////////////////////////////////////////////////////////

//MAIN OPTION  ->  Area Conversion`

                                            //Square Miles to Square yards

squareMilesToSquareyards(){

int squareMiles = int.parse(stdin.readLineSync()!);
// Conversion factor from square miles to square yards
  double squareYardsPerSquareMile = 3097600.0;

  // Convert square miles to square yards
  double squareYards = squareMiles * squareYardsPerSquareMile;

  print("$squareMiles square miles is equal to $squareYards square yards.");
}



                                            //Square yards to Square Miles  


squareyardsToSquareMiles(){

int squareyards = int.parse(stdin.readLineSync()!);

// Conversion factor from square miles to square yards
   double squareMilesPerSquareYard = 1 / 3097600.0;

  // Convert square miles to square yards
  double squareMiles1 = squareyards * squareMilesPerSquareYard;


print('$squareyards square yards is equal to $squareMiles1 square miles.');





}




                                     //Square Yards to Square Feet 


squareYardsToSquareFeet(){

int squareYards = int.parse(stdin.readLineSync()!);


// Conversion factor from square yards to square feet
  double squareFeetPerSquareYard = 9.0;

  // Convert square yards to square feet
  double squareFeet = squareYards * squareFeetPerSquareYard;

print('$squareYards square yards is equal to $squareFeet square feet.');


}

                                     //Square Feet to Square Yards 


squareFeetToSquareYards(){

int squareFeet = int.parse(stdin.readLineSync()!);
// Conversion factor from square feet to square yards
  double squareYardsPerSquareFoot = 1.0 / 9.0;

  // Convert square feet to square yards
  double squareYards = squareFeet * squareYardsPerSquareFoot;
 print('$squareFeet square feet is equal to $squareYards square yards.');


}






//////////////////////////////////Weight Conversion /////////////////////////////////////////////////////////


                                     //Kg to Grams


kilogramstoGrams(){

int kilograms = int.parse(stdin.readLineSync()!);


  // Conversion factor from kilograms to grams
  double gramsPerKilogram = 1000.0;

  // Convert kilograms to grams
  double grams = kilograms * gramsPerKilogram;
 print('$kilograms kilograms is equal to $grams grams.');

}





                                      // Grams to Kg  



gramsTokilograms(){

int grams = int.parse(stdin.readLineSync()!);


  // Conversion factor from grams to kilograms
  double kilogramsPerGram = 1.0 / 1000.0;

  // Convert grams to kilograms
  double kilograms = grams * kilogramsPerGram;
print('$grams grams is equal to $kilograms kilograms.');

}




                                        //Pounds to Kg

poundstoKg(){

int pounds = int.parse(stdin.readLineSync()!);

 // Conversion factor from pounds to kilograms
  double kilogramsPerPound = 0.45359237;

  // Convert pounds to kilograms
  double kilograms = pounds * kilogramsPerPound;

 print('$pounds pounds is equal to $kilograms kilograms.');
}







                                        //  Kg to Tons

kgtoTons(){

int kilograms = int.parse(stdin.readLineSync()!);

 // Conversion factor from kilograms to tons
  double tonsPerKilogram = 0.001;

  // Convert kilograms to tons
  double tons = kilograms * tonsPerKilogram;

 print('$kilograms kilograms is equal to $tons tons.');


}


                                        //   Tons to KG

tonstoKG(){

int  tons = int.parse(stdin.readLineSync()!);

 // Conversion factor from tons to kilograms
  double kilogramsPerTon = 1000.0;

  // Convert tons to kilograms
  double kilograms = tons * kilogramsPerTon;
  print('$tons tons is equal to $kilograms kilograms.');


}





//////////////////////////////////Time  Conversion /////////////////////////////////////////////////////////



                                        //   Seconds to Minutes

 SecondstoMinutes(){

int  Seconds = int.parse(stdin.readLineSync()!);
  // Conversion factor from seconds to minutes
  double minutesPerSecond = 1.0 / 60.0;

  // Convert seconds to minutes
  double minutes = Seconds * minutesPerSecond;

 print('$Seconds seconds is equal to $minutes minutes.');

}



                                        //   Minutes to second

 Minutestosecond(){

int  Minutes= int.parse(stdin.readLineSync()!);
   // Conversion factor from minutes to seconds
  double secondsPerMinute = 60.0;

  // Convert minutes to seconds
  double seconds = Minutes * secondsPerMinute;
   print('$Minutes minutes is equal to $seconds seconds.');

}


                                    /////Minutes to Hours


 MinutestoHours(){

int  Minutes= int.parse(stdin.readLineSync()!);
   // Conversion factor from minutes to hours
  double hoursPerMinute = 1.0 / 60.0;

  // Convert minutes to hours
  double hours = Minutes * hoursPerMinute;

 print('$Minutes minutes is equal to $hours hours.');


}



                                      ///Seconds to Hours


SecondstoHourss(){

int  Seconds  = int.parse(stdin.readLineSync()!);
    // Conversion factor from seconds to hours
  double hoursPerSecond = 1.0 / 3600.0;

  // Convert seconds to hours
  double hours = Seconds * hoursPerSecond;

 print('$Seconds seconds is equal to $hours hours.');

}

















///////////////////////////////////Restart Program//////////////////////////////////////
restartProgram() {
  print("---------------------------------");
  print("Press R to Continue");
  print("Press T to Terminate");
  var input = stdin.readLineSync();
  if (input == "R") {
    restart = true;
  } else if (input == "T") {
    restart = false;
  } else {
    print("Incorrect Input, Please make selection from above options only");
    restartProgram();
  }
}