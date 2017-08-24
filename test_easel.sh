if [ `which esl-reformat` ]; then
	echo "Test passes."
	exit 0
else 
	echo "Test fails."
	exit 1
fi
