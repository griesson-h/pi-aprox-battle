namespace main {
class Pi {
  static void Main(String[] args) {
    Console.WriteLine(pi(100000000));
  }
  public static double pi(long iterations) {
    double result = 0.0;
    int sign = 1;
    for (int i = 0; i <= iterations; i++) {
      result += sign * (1.0 / (2.0 * i + 1));
      sign *= -1;
    }
    return result * 4;
  }
}
}
