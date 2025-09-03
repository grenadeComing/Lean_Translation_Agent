import Mathlib

/-- Rudin exercise 1.14: If z is complex with z * conj z = 1, then |1+z|^2 + |1-z|^2 = 4. -/
theorem Rudin_exercise_1_14 (z : Complex) (h : z * Complex.conj z = (1 : Complex)) :
  (Complex.abs (1 + z))^2 + (Complex.abs (1 - z))^2 = 4 := by
  sorry
