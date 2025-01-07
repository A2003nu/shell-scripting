echo "Enter the directory"
read dir
if [ ! -d $dir ]
then
echo "Invalid Directory"
exit
fi
large=0
for file in `find $dir -type f`
do 
size=`stat -c %s $file`
echo "Size of $file is $size"
if [ $size -gt $large ]
then
large=$size
fi 
done
echo "File with MAximum size is $large"
