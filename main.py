def pi(iterations):
    result = 0.0
    sign = 1
    for i in range(iterations):
        result += sign * (1.0 / (2.0 * i + 1))
        sign *= -1
    return result * 4
print(pi(100000000))
