#!/bin/bash
clear

echo "***********************************"
read -p"Enter User Name" name
read -p"Enter Password" pass
echo "***********************************"

if [ $name == "1" -a $pass == "1" ] ; then
    echo "LOGIN SUCCESSFUL)"
	clear
		echo "***********************************"
			echo "1. Deployee Production"
			echo "2. Deployee QA"
			echo "3. Deployee DEV"
			echo "2. EXIT"
			echo -n "Select your choice? "
			read selct
		echo "***********************************"
		clear	
			if [ $selct -eq 1 ] ; then
				echo "***********************************"
				echo "ESOFT PROJECT"
				echo "***********************************"
				echo "Production Deployee"
				echo "1. Do You Want To Deployee (Y)"
				echo "2. Exit (99)"
				echo "3. To main menu (1)"
				echo -n "Select your choice? "
				read selct

				if [ $selct == "Y" ] ; then
						
						cp config.env prod
						cp about.html prod
						cp contact.html prod
						echo "Move to Prod folder"
						
						
				elif [ $selct == "99" ]; then
						echo "$selct"
						 exit;
				elif [ $selct == "1" ]; then
						echo "main menu"
				else
						echo "What you want"
				fi
			else
				   if [ $selct == "2" ] ; then
						echo "***********************************"
						echo "ESOFT PROJECT"
						echo "***********************************"
						echo "QA Deployee"
						echo "1. Do You Want To Deployee (Y)"
						echo "2. Exit (99)"
						echo "3. To main menu (1)"
						echo -n "Select your choice? "
						read selct

						if [ $selct == "Y" ] ; then
								cp index.html QA
								cp config.env QA
								cp about.html QA
								cp contact.html QA
								echo "Move to QA folder"
								
								
						elif [ $selct == "99" ]; then
								echo "exit"
								exit
						elif [ $selct == "1" ]; then
								echo "main menu"
						else
								 echo "What you don't like Unix/Linux OS."
						fi
				   else
						 echo "What you don't like Unix/Linux OS."
				   fi
			fi	
	 
else
     echo "LOGIN ERROR)"
	 clear
		echo "***********************************"
		read -p"Enter User Name" name
		read -p"Enter Password" pass
		echo "***********************************"

fi