<?php
require('EBooking.php');
require('EDate.php');
require('EPlace.php');
echo "\n";
print ("Hello");
echo "\n";
$date=new EDate("03","05","2020","16","30");
echo ($date->__toString());
echo "\n";
echo ($date->getHour()." ".$date->getMinutes());
echo "\n";
echo ($date->getPosition());
echo "\n";
$booking=new EBooking($date, "Antonio Maria", "Marottoli");
echo($booking->__toString());
echo "\n";
$booking->validateState("true");
echo($booking->__toString());
$place= new EPlace ("Via Brasile, 4", "L'Aquila", "67100");
echo "\n";
echo ($place->__toString());
?>