import Mathlib

/-!
Exercise: Prove that the power series ∑ z^n / n^2 converges at every point of the unit circle.
We state the result below. The proof is omitted ( := by sorry ).
-/

open Complex

theorem Shakarchi_exercise_1_19b (z : ℂ) (hz : ‖z‖ = 1) :
  Summable (fun n : ℕ => z ^ n / (n : ℂ) ^ 2) := by sorry
