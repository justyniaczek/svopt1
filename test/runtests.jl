using inter_powell, Tests

@test inter
x, x1 = -1.0, x2 = 0.5, x3 = 1.0, s = 0.05, x -> x^4 + 3 * x^3 + x^2 + sin(x)
powell(x, x1, x2, x3, s) == -1.1973