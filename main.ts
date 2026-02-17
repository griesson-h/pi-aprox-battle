function pi(iterations: number) : number {
  let result: number = 0.0;
  let sign: number = 1;
  for (let n: number = 0; n <= iterations; n++) {
    result += sign * (1.0 / (2.0 * n + 1.0));
    sign *= -1;
  }
  return result * 4.0;
}
console.log(pi(100000000));
