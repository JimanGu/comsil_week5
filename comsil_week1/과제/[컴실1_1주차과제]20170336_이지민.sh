echo "Working directory:"

read directory
if [ "$directory" = "" ]
then
	for i in *
	do 
	if [ -f $i ]
	then 
	mv "$i" $(echo $i | tr '[:upper:][:lower:]' '[:lower:][:upper:]')

	fi
	done


else
	cd $directory
	if [ $? -eq 0 ]
	then
		for i in	 *
		do 	
		if [ -f $i ]
		then 
		mv "$i" $(echo $i | tr '[:upper:][:lower:]' '[:lower:][:upper:]')
		fi
		done
	else 
	echo "Wrong directory."
	fi
fi
