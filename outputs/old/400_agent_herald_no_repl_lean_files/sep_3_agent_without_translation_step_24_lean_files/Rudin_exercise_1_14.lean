import Mathlib

/- Rudin Ex. 1.14: If z is a complex number with |z| = 1 (equivalently z * conj z = 1), compute |1+z|^2 + |1-z|^2. We state it using Complex.normSq. -/

theorem Rudin_exercise_1_14 (z : ℂ) (h : Complex.normSq z = 1) :
  Complex.normSq (1 + z) + Complex.normSq (1 - z) = 4 := by sorry
