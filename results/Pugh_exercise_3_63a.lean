import Mathlib

open Real
open Set

/-- The series ∑_{k=2}^∞ 1/(k (log k)^p) converges for p > 1. We index from n to avoid log 1. -/
theorem pugh_exercise_3_63a {p : ℝ} (hp : 1 < p) :
  Summable (fun n : ℕ => 1 / ((n + 2) * (log (n + 2)) ^ p)) := by sorry
