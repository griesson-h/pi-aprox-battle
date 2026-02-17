F64 Pi(I64 iterations) {
  F64 result = 0.0;
  F64 sign = 1.0;
  for (F64 n = 0; n < iterations; n++) {
    result += sign * (1.0 / (2.0 * n + 1.0))(F64);
    sign *= -1;
  }
  return result*4;
}

U0 Main() {
  "%lf\n",Pi(100000000);
}

Main;
