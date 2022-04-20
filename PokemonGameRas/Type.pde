class Type
{
   String name;
   String[] weakness;
   String[] resistance;
   String[] immune;
   
   Type()
   {
       name = "None";
       weakness = new String[1];
       resistance = new String[1];
       immune = new String[1];
   }
   
   Type(String tempName, String[] tempWeakness, String[] tempResistance)
   {
       name = tempName;
       immune = new String[1];
       immune[0] = "Nothing";
       weakness = tempWeakness;
       resistance = tempResistance;
   }
   
   Type(String tempName, String[] tempWeakness, String[] tempResistance, String[] tempImmune)
   {
       name = tempName;
       immune = tempImmune;
       weakness = tempWeakness;
       resistance = tempResistance;
   }

}
