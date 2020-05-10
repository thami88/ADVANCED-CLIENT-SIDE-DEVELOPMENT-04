package com;

public class User {
	
	public String login(String un, String pw) {
		
		String output = "";
		
		if (!un.equals("asd")) { // Hard coded test value
			
			output = "Invalid Username";
			
		} else if (un.equals("asd")) { // Hard Coded test value
			
			if (!pw.equals("asd")) { // Hard Coded test value
				
				output = "Invalid Password";
				
			} else if (pw.equals("asd")) { // Hard Coded Test Value
				
				output = "Success";

			} // End else if

		}
		
		return output;
		
	}

}
