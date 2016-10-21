import linalg
import function, frankWolfe

let result = findMin(f, vector([0.1'f64, 0.1'f64]))
echo result
echo f(result)

