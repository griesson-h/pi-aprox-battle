#include <stdio.h>

long double pi(long int iterations) {
  long double result = 0.0;
  int sign = 1;
  for (int n = 0; n <= iterations; ++n) {
    result += sign * (1.0 / (2.0 * n + 1.0));
    sign *= -1;
  }
  return result * 4;
}

int main() {
  printf("%Le\n", pi(10000000));
}
