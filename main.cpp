#include <iostream>

long double pi(long int iterations) {
  long double result = 0.0;
  int sign = 1;
  for (auto n = 0; n <= iterations; ++n) {
    result += sign * (1.0 / (2.0 * n + 1));
    sign *= -1;
  }
  return result * 4;
}

int main() {
  std::cout << pi(100'000'000) << std::endl;
}

