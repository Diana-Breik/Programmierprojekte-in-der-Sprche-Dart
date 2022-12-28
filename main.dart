import 'dart:io';

////Write a function that will accept a List variable and will print the first and last element at the list.//wie die zweite Option im Switch.
void main(){
  List <int> MyList=[1,2,3,4,5,6,7,8];
  for(int i=0;i<=7;i++) {
    print('*************************************************************');
    print('Enter number 1 to display the list');
    print('Enter number 2 to display the first and the last element in this list');
    print('Enter number 3 to add a new element to a specific index');
    print('Enter number 4 to add a new element to the end of the list');
    print('Enter number 5 to delete an element through the index');
    print('Enter number 6 to delete this list');
    int X;
    X = int.parse(stdin.readLineSync() ?? '0');//Daten von dem Benutzer eingeben.
    switch (X) {
      case 1:
        print("the list is: ${MyList.join(',')}");//Daten anzeigen.
        break;
      case 2:
        returnFirstAndLastElementInList(MyList); //rufen diese Funktion an .
        break;
      case 3:
       print("enter the valid index please:");//wenn ich nur 8 nummern in der Liste habe und eine Nummer noch hinzufügen möchte,dann kann ich 8 als eine Position am höchsten eingeben.
       int indexx = int.parse(stdin.readLineSync() ?? '0'); //Daten von dem Benutzer eingeben.//print(indexx);
       print("enter the value ");
       int newValue = int.parse(stdin.readLineSync() ?? '0'); //Daten von dem Benutzer eingeben.//print(newValue);
       MyList.insert(indexx, newValue); //diese Funktion fügt dieses Element in einer bestimmten Position hinzu.
     //print(MyList);
        break;
      case 4:
        print("enter the value ");
        int newValue = int.parse(stdin.readLineSync() ?? '0');//Daten von dem Benutzer eingeben.
        MyList.add(newValue);// diese Funktion fügt am Ende der Liste ein Element noch hinzu.
      //print(MyList);
        break;
      case 5:
        print("enter the index of the element you want to delete:");
        int indexx = int.parse(stdin.readLineSync() ?? '0');//Daten von dem Benutzer eingeben.
        MyList.removeWhere((element) => MyList.indexOf(element) == indexx);// ein Element löschen, aufgrund der erfüllten kondition
      //print(MyList);
        break;
      case 6:
        MyList.clear(); //MyList=[];//diese Funktion macht die Liste leer.
        break;
      default:
        print('invalid value');
    }
  }

}
void returnFirstAndLastElementInList(List <int> Numbers){ //hier können wir das erste und letzte Element in der Liste kennen.
  if(/*Numbers.isNotEmpty && */ (Numbers.length)>1) {
    print('The first element on this list is: ${Numbers.first}'); //wir rufen die Funktion, die bringt das erste Element, an.
   // print('The first element on this list is: ${Numbers[0]}'); // An other way
   // print('The last element on this list is: ${Numbers.last}');//ir rufen die Funktion, die bringt das letzte Element, an.
    print('The last element on this list is: ${Numbers[Numbers.length -
        1]}'); // An other way
  }else if(/*Numbers.isNotEmpty && */ (Numbers.length)==1){
    print('The first element itself is the last element in this list: ${Numbers[0]}');
  }//wenn die Liste nur ein einziges Element hat,ist es dann das erste und letzte Element.
  else{
    print('The list is empty now');
  }//die Liste ist leer in dieser Option
}