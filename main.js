function pi(iterations) {
  let result = 0.0;
  let sign = 1;
  for (let n = 0; n <= iterations; n++) {
    result += sign * (1.0 / (2.0 * n + 1));
    sign *= -1;
  }
  return result * 4;
}
console.log(pi(100000000));
