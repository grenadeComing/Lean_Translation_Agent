import Mathlib
open Complex

/-- For z on the unit circle and z ≠ 1, the series ∑_{n=1}^∞ z^n / n converges. -/
theorem Shakarchi_exercise_1_19c (z : ℂ) (hz : ‖z‖ = 1) (hne : z ≠ 1) :
  Summable fun n : ℕ => z^(n+1) / (n+1) := by sorry
