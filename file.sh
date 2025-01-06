if [ $# -eq 0 ]
then
echo "No arguments"
exit
elif [ $# -lt 2 ]
then
echo "Only one argument"
exit
else
f1=`ls -l $1|cut -c '2-10'`
f2=`ls -l $2|cut -c '2-10'`
if [ "$f1" = "$f2" ]
then
echo "File permission are identical"
echo "The permission are:$f1"
else
echo "File permission are not identical"
echo "The permission of first file is f1 : $f1"
echo "The permission of second file is f2 : $f2"
fi
fi
