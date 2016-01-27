#!/usr/bin/perl -w
#the -w tells PERL to warn you about questionable syntax
#PERL program to count number of characters, words and lines in a given text file 'counter1.txt'

#Name of the file, we're running
$TheFile="counter1.txt";
#Open the file, quit if its not there. INFILE is the file handle.
open(INFILE,$TheFile) or die "The file could not be found. Quitting now.\n";

#Initialize the counters.
$CharCount=0;
$WordCount=0;
$LineCount=0;

while(<INFILE>){
	$TheLine=$_; #Save the whole line
	chomp($TheLine); #Gets rid of the line break/extra spaces. 
	$LineCount=$LineCount+1; #Add a line

	$LineLength=length($TheLine);
	$CharCount=$CharCount+$LineLength; #Since length is simply number of characters.

	#Now comes the tricky part: counting the individual words!

	if($TheLine eq ""){next};

	#The line has atleast one word on it.
	$WordCount=$WordCount+1;

	$counter=0;

	until($counter == $LineLength){
		if (substr($TheLine,$counter,1) eq " "){
			$WordCount=$WordCount+1;
		}
		$counter=$counter+1;
	} 
} 

print "For the file $TheFile:\n";
print "Number of lines: $LineCount\n";
print "Number of words: $WordCount\n";
print "Number of characters: $CharCount\n";

 