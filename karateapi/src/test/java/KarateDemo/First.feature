Feature: Define variables

  
  Scenario: Define Array data types
   
   Jason array [] -> index number
   Jason Object {} -> key:value -> key?
   
   Given def myObject = 
   """
   [
   {
   "name": "kavi",
   "age":36,
   "Nationality":"India",
   "Subjects":["Tamil", "English","Maths","Science"]
   },
   {
   "name": "Surabi",
   "age":36,
   "Nationality":"US",
   "Subjects":["SSC", "English","Maths","Science"]
   }
   ]
   
   """
   
   Then print myObject[0].name
   And print myObject[1].name
   And print myObject[1].Subjects
   
   
   
    Scenario: Define Object data types
   
   Jason array [] -> index number
   Jason Object {} -> key:value -> key?
   
   Given def myObject = 
   """
   
   {
   "name": "kavi",
   "age":36,
   "Nationality":"India",
   "Subjects":["Tamil", "English","Maths","Science"]
   }   
   
   
   """
   
   Then print myObject.name
   And print myObject.age
   And print myObject.Subjects[3]
   And print myObject