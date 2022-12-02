package com.xyz;

public class TextEditor 
{
    private SpellChecker spellChecker;
    
    public TextEditor(SpellChecker spellChecker)
    {
    	System.out.println("Inside texteditor method..");
    	this.spellChecker=spellChecker;
    	System.out.println("****"+this.spellChecker);
    }
    
    public void spellCheck()
    {
    	//spellChecker.checkSpelling();
    	System.out.println("Welcome to SpellCheck");
    }
}
