public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  
  
  String letters = onlyLetters(word);
  String backwards = reverse(letters);
  //String letters = onlyLetters(word);
  if(backwards.equalsIgnoreCase(letters))

    return true;
  
  //if(letters.equals(word))
    //return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    //your code here
    int last = str.length()-1;
      for(int i = last; i >= 0; i--)
        sNew = sNew + str.substring(i, i+1);
    return sNew;
}
public String noSpaces(String sWord){
  String b = "";
  for(int i=0; i< sWord.length(); i++)
    if(!sWord.substring(i, i+1).equals(" "))
      b = b + sWord.substring(i, i+1);
    return b;
}

public String onlyLetters(String sString){
  String b = "";
  if(sString.length() == 0)
    return "";
  else if(sString.length() >=1)
    for(int i = 0; i < sString.length(); i++)
      if(Character.isLetter(sString.charAt(i)) == true)
        b = b + sString.substring(i,i+1);
        return b;
}


