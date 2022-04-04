#!/bin/bash
echo "------ Welcome to Fast Food Restaurant --------"

echo "||....Food Name.............Size............Price......|||"
echo "1.....Burger..............200/300g.........130tk/180tk"
echo "2.....Chicken Pizza.......8/10inch.........120tk/170tk"
echo "3.....French Fry.............250g...........70tk"
echo "4.....Coffee...............250g...............65tk"

echo "What do you want to order?"

read choice

if (($choice == 1))
then 
	echo "Which size of burger you want?\n"
	echo "1. 200g 2. 300g"

read burger_size
	if (($burger_size == 1))
	then
		echo "How many Burger do you want?\n"
	
	read burger_quantity
	price= `expr $burger_quantity \* 130`
	
	elif ((burger_size == 2))
	then 
		echo "How many Burger do you want?"
	read burger_quantity
	price=`expr $burger_quantity \* 180`
	fi
elif ((choice == 2))
then
echo "Which size pizza you want?"
echo "1. 8inch 2. 10inch"
read pizza_size
	if (($pizza_size == 1))
	then 
		echo "How many Pizza do you want?"
	read pizza_q
	price=`expr $pizza_q \* 120`
	
	elif (($pizza_size == 2))
	then 
		echo "How many Pizza do you want?"
	read pizza_q
	price=`expr $pizza_size \* 150`
	fi
	
elif ((choice == 3))
then
	echo "How many plate of French Fries do you want?"
read ff_q
price=`expr $ff_q \* 70`

	
elif ((choice == 4))
then 
	echo "How many Cup of Coffee do you want?"
read coffee_q
price=`expr $coffee_q \* 65`
fi


echo "Do you want to order 1 more item?"
echo "1. Yes 2. No"
read order_choice2


if ((order_choice2 == 1))
then 
	echo "What do you want to order as a second item?"

read choice
	if (($choice == 1))
	then 
		echo "Which size of burger you want?\n"
		echo "1. 200gm 2. 300gm"
	read burger_size
		if (($burger_size == 1))
		then
			echo "How many Burger do you want?\n"
		read burger_quantity
		price2=`expr $burger_quantity \* 130`
		
		elif ((burger_size == 2))
		then
			echo "How many Burger do you want?"
		read burger_quantity
		price2=`expr $burger_quantity \* 180`
		fi
	elif ((choice == 2))
	then
		echo "Which size pizza you want?"
		echo "1. 8inch 2. 10inch"
	read pizza_size
		if (($pizza_size == 1))
		then 
			echo "How many Pizza do you want?"
		read pizza_q
		price2=`expr $pizza_q \* 120`
		
		elif (($pizza_size == 2))
		then
			echo "How many Pizza do you want?"
		read pizza_q
		price1=`expr $pizza_size \* 150`
		fi
	
	elif ((choice == 3))
	then
		echo "How many plate of Franch Fries do you want?"
	read ff_q
	price2=`expr $ff_q \* 70`
	
	
	elif ((choice == 4))
	then 
		echo "How many cup of coffee do you want?"
	read coffee_q
	price2=`expr $coffee_q \* 65`
	fi
	
echo "Your Total Bill is:" $((price+price2))
echo "Please pay the bill and wait for collecting the food!"
echo "Thankyou for purchasing food from our restaurant! :)"

elif ((order_choice2 == 2))
then 
	echo "Your Total Bill is:"$price
	echo "Pleasle pay the bill and wait for collecting the food!"
	echo "Thank You for purchasing food!"
fi
