import future, math, linalg
import integration

const N* = 2

let
  #n = 2
  a = vector([2'f64, 1'f64])
  c = vector([3'f64, 3'f64])

proc f*(x: Vector64[N]): float64 {.procvar.} =
  for i in 0..<N:
    result += simpson((arg => (a[i] + pow(arg/c[i], 3))), 0'f64, x[i], ceil(x[i]/1e-4).int)
