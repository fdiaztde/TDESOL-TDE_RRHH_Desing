#!C:\perl\bin\perl.exe

use File::Copy qw(copy);
use POSIX qw(strftime);

$datestring = strftime "%Y%m%d%H%M%S", localtime;
$originalfile = '..\\' . $ARGV[0];
$destinationfile = '..\\' . $ARGV[1];
$newfile = $destinationfile . '.' . $datestring;

	$datestring = strftime "%Y%m%d%H%M%S", localtime;
	print $datestring . ' - ';
	print 'Opening file ' . $originalfile . "\n";
	

	$datestring = strftime "%Y%m%d%H%M%S", localtime;
	print $datestring . ' - ';
	print 'Creating a backup of destination file ' . $destinationfile . "\n";


	copy $destinationfile, $newfile;
	
	$columnprint = 1;
	$columnendprint = 1;
	

	$constraintprint = 1;
	$constraintendprint = 1;
	

	open (SF, $originalfile);
	open (TF, '>' . $destinationfile);
	
    while ($line = <SF>) {

		
		if ($line =~ /(.*columns.*name=\")(.+\")(.+)/) 
		{
			$ph1 = $1;
			$ph2 = $2;
			$ph3 = $3;
			$ph4 = $4;
			$ph5 = $5;
			$ph6 = $6;
			
			print $ph2 . "\n";
			
			if (($ph2 =~ /ID_.*/) || ($ph2 =~ /SK_.*/) || ($ph2 =~ /FC_INI_VAL.*/) || ($ph2 =~ /FC_FIN_VAL.*/))
			{
				$columnprint = 0;
			}
			else
			{
				$columnprint = 1;
			}
		} 
		
		if ($line =~ /.+\/columns.+/) 
		{
			$ph1 = $1;
			$ph2 = $2;
			$ph3 = $3;
			$ph4 = $4;
			$ph5 = $5;
			$ph6 = $6;
			
			$columnendprint = 2;
		} 

		if ($line =~ /.+\<SQLConstraints.+>/) 
		{
			
			print "1- " . $line . "\n";
			$constraintprint = 0;
		} 


		if ($line =~ /.+\<\/SQLConstraints.+>/) 
		{
			
			print "2- " . $line . "\n";
			$constraintendprint = 2;
		} 


		if ($line =~ /.+\<constraints.+>/) 
		{
			
			print "3- " . $line . "\n";
			$constraintprint = 0;
		} 


		if ($line =~ /.+\<\/constraints>/) 
		{
			
			print "4- " . $line . "\n";
			$constraintendprint = 2;
		} 


		if ($line =~ /.+\<constraints.+\/>/) 
		{
			
			print "5- " . $line . "\n";
			$constraintprint = 0;
		} 


		if ($line =~ /.+\<constraints.+\/>/) 
		{
			
			print "6- " . $line . "\n";
			$constraintendprint = 2;
		} 

		
		if ($line =~ /(.*SQLTables\:PersistentTable.*name=\")(.+\")(.+)/) 
		{
			$ph1 = $1;
			$ph2 = $2;
			$ph3 = $3;
			$ph4 = $4;
			$ph5 = $5;
			$ph6 = $6;

		
			$ph2 =~ s/DIM/STG_DIM/;
			$ph2 =~ s/FACT/STG_FACT/;
			$ph2 =~ s/REL/STG_REL/;

			
			print TF $ph1 . $ph2 .  $ph3 . "\n";
		} 
		elsif ($line =~ /(.*SQLSchema\:Schema.*name=\")(.+\")(.+)(indices=)(\".+\")(.+)/) 
		{
			$ph1 = $1;
			$ph2 = $2;
			$ph3 = $3;
			$ph4 = $4;
			$ph5 = $5;
			$ph6 = $6;

			$ph2 = 'staging"';

			
			print TF $ph1 . $ph2 .  $ph3 . $ph4 . $ph5 . $ph6 . "\n";
		} 
		elsif ($line =~ /(.*SQLSchema\:Database.*name=\")(.+\")(.+)/) 
		{
			$ph1 = $1;
			$ph2 = $2;
			$ph3 = $3;

			$ph2 =~ s/DWH/STG/;

			
			print TF $ph1 . $ph2 .  $ph3 . "\n";
		} 
		else
		{
			if ($columnprint == 1 && $constraintprint == 1) {print TF $line;}
			if ($columnendprint == 2) 
			{
				$columnprint = 1;
				$columnendprint = 1;
			}
			if ($constraintendprint == 2) 
			{
				$constraintprint = 1;
				$constraintendprint = 1;
			}

		}
		
	}
	
	close SF;
	close TF;