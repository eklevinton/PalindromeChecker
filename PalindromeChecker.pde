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
  String backwards = reverse(word);
  String s = onlyLetters(word);

  if(word.equals(backwards)) {
    return true;
  }
  else if(s.equals(reverse(s))) {
    return true;
  }
  else if(s.equalsIgnoreCase(reverse(s))) {
    return true;
  }
  return  false;
}

public String onlyLetters(String word){
  String onlyLet = "";
  for (int i = 0; i <word.length(); i++){
    if (Character.isLetter(word.charAt(i)) == true){
      onlyLet += word.substring(i, i+1);
    }
  }
  return onlyLet;
}


  public String reverse(String word){
    String answer = new String();
    for (int i = word.length()-1; i>=0; i--) {
    answer = answer+word.charAt(i);
    }
    return answer;
}
}
