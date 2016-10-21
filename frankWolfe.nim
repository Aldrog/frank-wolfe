import future, linalg, math
import misc
import function

const epsilon = 1e-1
proc linearMin(lin: Vector64[N], c: float64): Vector64[N] =
  zeros(N)

proc findMin*(f: Vector64[N] -> float64, startX: Vector64[N]): Vector64[N] =
  var lbd = 0'f64
  var curX = startX
  while (f(curX) - lbd) / lbd >= epsilon:
    let grad = f.gradient(curX)
    let y = linearMin(grad, f(curX) - grad * curX)
    lbd = max(lbd, grad * y + f(curX) - grad * curX)
    if (f(curX) - lbd) / lbd < epsilon:
      break
  return curX
