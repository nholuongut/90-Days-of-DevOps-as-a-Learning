package main

import "fmt"

func main() {
	var challenge = "#90-Days-of-DevOps-as-a-Learning"
	const daystotal = 90
	var dayscomplete = 11

	fmt.Printf("Welcome to %v\n", challenge)
	fmt.Printf("This is a %v challenge and you have completed %v days\n", daystotal, dayscomplete)
	fmt.Println("Great work")
}