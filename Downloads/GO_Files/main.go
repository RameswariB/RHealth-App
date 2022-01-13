/*
Trends in technology
Group: Rameswari Bhoi,
Jagrut Gosai,
Albelis Beccea,
Gabriel Paz.
Date: 2022-01-12

14 –	15 –	Write an algorithm that simulates the withdrawal of an amount of money from an ATM.
The algorithm should ask for the amount of the current balance and the amount of the withdrawal.
If the amount of the withdrawal is greater than the balance, display an error message; otherwise, display the new balance.

*/

package main

import "fmt"

func main() {

	current_Balance := 105
	withdrawal_Balance := 100

	if current_Balance > withdrawal_Balance {
		current_Balance = current_Balance - withdrawal_Balance
		fmt.Println("After withdrawing ", withdrawal_Balance, " $ current balance is ", current_Balance, "$")
	} else {
		fmt.Println("Balance is insufficient for withdraw")
	}

}
