package main

import (
	"fmt"
)

func pi(iterations int64) float64 {
	result := 0.0;
	sign := 1.0;
	var i float64;
	for i = 0; i <= float64(iterations); i++ {
		result += sign * (1.0 / (2.0 * i + 1));
		sign *= -1;
	}
	return result * 4.0;
}

func main() {
	fmt.Println(pi(100000000));
}
