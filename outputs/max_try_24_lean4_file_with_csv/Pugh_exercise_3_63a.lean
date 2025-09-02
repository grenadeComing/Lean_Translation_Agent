import Mathlib

/-- Pugh exercise 3.63(a): The series \sum_{k>=2} 1 / (k (log k)^p) converges for p > 1. -/
theorem Pugh_exercise_3_63a (p : ℝ) (hp : 1 < p) :
  Summable (fun n : ℕ => if n < 2 then 0 else 1 / ((n : ℝ) * (Real.log (n : ℝ)) ^ p)) := by sorry
