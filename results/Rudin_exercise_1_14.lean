import Mathlib

open Complex

/-- Rudin Exercise 1.14: If z is a complex number with z * star z = 1, show |1+z|^2 + |1-z|^2 = 4.
We state the squared moduli as (1+z) * star (1+z) + (1-z) * star (1-z) = 4. -/
theorem Rudin_exercise_1_14 (z : ℂ) (h : z * star z = 1) : (1 + z) * star (1 + z) + (1 - z) * star (1 - z) = 4 := by sorry
