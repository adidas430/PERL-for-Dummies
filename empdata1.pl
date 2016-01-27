#!/usr/bin/perl
#a simple script to see if we ca find an employee by his ID in a flat file DB.
#each record is in a row, and separated by tabs. Look at empdata1.txt for the structure


$EmployeeDataBase="empdata1.txt";
open(INFILE,$EmployeeDataBase) or die "Could not locate file. Exiting now.\n";

while (1) {  #Loop forever
	print "Do you want to search by employee ID (I) or Quit (Q)\n";
	$SearchOption=<STDIN>;

	chomp($SearchOption); #since the STDIN entry also comes with a newline

	$SearchOption=~tr/A-Z/a-z/; #Ensure what the user entered is an alphabet.

	if($SearchOption eq 'Q'){  #Check if user wants to quit.
		last;
	}

	#The user is required to enter Q or I. Anything else, they need to try again
	unless ($SearchOption eq 'I') {
		print "Please enter only (I) for ID based search or (Q) to quit."
		next;

	}

	#Get ID Number to search for
	print "Please enter ID Number to search for:\n";
	$IDToSearch=<STDIN>;
	chomp($IDToSearch);
	




}

