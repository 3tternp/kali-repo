#!/bin/bash
while true ;do

echo "which kali version are you using ?"
echo "new repository file for 2016.1 or above"
echo "1. kali Rolling"
echo "retired/ old repository file for old system kali sana and moto"
echo "2. kali sana"
echo "3. kali moto"

read count
 
if [ $count -eq 1 ]
then
echo "deb http://http.kali.org/kali kali-rolling main non-free contrib">>/etc/apt/sources.list
echo "# For latest and safest snapshot access, uncomment the following line">>/etc/apt/sources.list
echo "deb http://http.kali.org/kali kali-last-snapshot main non-free contrib" > /etc/apt/sources.list
exit

elif [ $count -eq 2 ]
then
 echo "deb http://old.kali.org/kali sana main non-free contrib" > /etc/apt/sources.list
 echo "# For source package access, uncomment the following line">>/etc/apt/sources.list
 echo "deb-src http://old.kali.org/kali sana main non-free contrib">> /etc/apt/sources.list

exit

elif [ $count -eq 3 ]
then
  echo "deb http://old.kali.org/kali moto main non-free contrib" > /etc/apt/sources.list
 echo "# For source package access, uncomment the following line" >>/etc/apt/sources.list
 echo "deb-src http://old.kali.org/kali moto main non-free contrib" >>/etc/apt/sources.list

exit

else 
echo " You are out of range please enter number 1,2 or 3"
  
fi
done
