#!/bin/bash

echo "Welcome To Warehouse Management System"
function checkStock {
	echo -p "Enter name of item: ", ch
}

function infoStationary {
	echo "+---------------------------------------------+"
	echo "| col1  |"
}

function Stationary {
	echo "1. Check the stock items"
	echo "2. Check stock of an item"
	echo "3. Check all the information for a product"
	read ch
	case $ch in
		1) echo -e "Items:"
			awk -F, '{print $1}' Stationary.csv
			;;
		2) checkStock
			;;
		3) info
			;;
	esac
}
function stockList {
	echo -e "+------Welcome to the Stock Warehouse--------+"
	echo "Please enter the category you want to visit"
	echo "1. Stationary"
	echo "2. Food"
	echo "3. Clothing"
	echo "4. Pharmacy"
	echo "5. Footwear"
	echo -e "Enter choice: "
	read ch
	case $ch in 
		1) Stationary
			;;
		2) Food
			;;
		3) Clothing
			;;
		4) Phrmacy
			;;
		5) Footwear
			;;
	esac
}

function adminMenu {
	echo -e "\n+------------Admin Menu---------------+"
	echo "| 1. Check the List of stock         |"
	echo "| 2. ksnckdscn                       |"
	echo "+---------------------------------------+"
	echo -e "Enter your Choice: "
	read ch
	case $ch in
		1) echo "Entering the Stock list..."
			stockList
			;;
		2) echo "Add new feature..."
			;;
	esac
}

function OrderMenu {
	echo -e "Which category do you want?"
	stockList
	echo -e "Enter the item name:"
	read ch
	./notify.sh
}
function customerMenu {	
	echo -e "\n+------------Customer Menu---------------+"
	echo "| 1. Order an item                   |"
	echo "| 2. ksnckdscn                       |"
	echo "+---------------------------------------+"
	echo -e "Enter your Choice: "
	read ch
	case $ch in
		1) echo "Entering the item Menu"
			OrderMenu
			;;
		2) echo "Add new feature..."
			;;
	esac
}
function mainMenu {
	echo -e "\n+---------Login Menu------------+"
	echo "| 1. Admin                      |"
	echo "| 2. Customer                   |"
	echo "+-------------------------------+"
	echo -e "Enter your Choice: "
	read log
	case $log in 
		1) echo "Admin Login Successful"
			adminMenu
			;;
		2) echo "Customer Login Successful"
			customerMenu
			;;
		*) echo "Invalid choice. Please Enter a valid choice"
			;;
	esac
}

mainMenu




