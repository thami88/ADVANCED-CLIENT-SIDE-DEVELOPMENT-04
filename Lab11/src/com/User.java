package com;

public class User {
	
	public String login(String un, String pw) {
		
		String output = "";
		
		if (!un.equals("asd")) { // Hard coded test value
			
			output = "Invalid username";
			
		} else if (un.equals("asd")) { // Hard Coded test value
			
			if (!pw.equals("asd")) { // Hard Coded test value
				
				output = "Invalid password";
				
			} else if (pw.equals("asd")) { // Hard Coded Test Value
				
				output = "success";

			} // End else if

		}
		
		return output;
		
	}

}
