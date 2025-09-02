import Mathlib

open Complex

/-- Shakarchi Exercise 5.1 (Blaschke condition, stated). -/
theorem Shakarchi_exercise_5_1
  (f : Complex → Complex)
  (z : ℕ → Complex)
  (h_z_in_disk : ∀ n, Complex.abs (z n) < 1)
  (h_bounded : ∃ M : ℝ, ∀ w, Complex.abs w < 1 → Complex.abs (f w) ≤ M)
  (h_not_identically_zero : ¬ (∀ w, f w = 0))
  (h_zeros : ∀ n, f (z n) = 0) :
  Summable (fun n => (1 : ℝ) - Complex.abs (z n)) := by sorry
