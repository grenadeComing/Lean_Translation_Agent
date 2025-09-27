import Mathlib

-- Putnam 2020 B5: If z_j (j=1..4) are complex numbers with |z_j| = 1 and z_j ≠ 1,
-- then 3 - z1 - z2 - z3 - z4 + z1*z2*z3*z4 ≠ 0.

theorem putnam_exercise_2020_b5 (z1 z2 z3 z4 : ℂ)
  (h1 : Complex.abs z1 = (1 : ℝ)) (h1' : z1 ≠ 1)
  (h2 : Complex.abs z2 = (1 : ℝ)) (h2' : z2 ≠ 1)
  (h3 : Complex.abs z3 = (1 : ℝ)) (h3' : z3 ≠ 1)
  (h4 : Complex.abs z4 = (1 : ℝ)) (h4' : z4 ≠ 1) :
  ( (3 : ℂ) - z1 - z2 - z3 - z4 + z1 * z2 * z3 * z4) ≠ (0 : ℂ) := by sorry
