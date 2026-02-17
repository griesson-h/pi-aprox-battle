class Main {
  public static void main(String[] args) {
    System.out.println(pi(100000000));
  }
  public static double pi(int iterations) {
    double result = 0.0;
    int sign = 1;
    for (int i = 0; i <= iterations; i++) {
      result += sign * (1.0 / (2.0 * i + 1));
      sign *= -1;
    }
    return result * 4;
  }
}
