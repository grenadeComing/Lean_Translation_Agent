import Mathlib

theorem Putnam_exercise_2020_b5 {z1 z2 z3 z4 : Complex}
  (h1 : Complex.abs z1 = 1) (h2 : Complex.abs z2 = 1) (h3 : Complex.abs z3 = 1) (h4 : Complex.abs z4 = 1)
  (nz1 : z1 ≠ 1) (nz2 : z2 ≠ 1) (nz3 : z3 ≠ 1) (nz4 : z4 ≠ 1) :
  (3 : Complex) - z1 - z2 - z3 - z4 + z1 * z2 * z3 * z4 ≠ 0 := by sorry
