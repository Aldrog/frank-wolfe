import future, linalg
import function

const delta = 1e-6

proc gradient*(f: Vector64[N] -> float64, x: Vector64[N]): Vector64[N] =
  makeVector(N, proc(i: int): float64 =
    (f(x) - f(x - makeVector(N, proc(j: int): float64 =
      if j == i:
        delta
      else:
        0
    ))) / delta)
