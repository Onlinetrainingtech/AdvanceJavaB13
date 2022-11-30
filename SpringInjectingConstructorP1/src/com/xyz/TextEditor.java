package com.xyz;

public class TextEditor 
{
    private SpellChecker spellChecker;
    
    public TextEditor(SpellChecker spellChecker)
    {
    	
    }
    
    public void spellCheck()
    {
    	spellChecker.checkSpelling();
    }
}
