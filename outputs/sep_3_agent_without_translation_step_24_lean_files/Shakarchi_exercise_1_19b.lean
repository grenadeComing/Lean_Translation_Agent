import Mathlib

/-!
Exercise: Prove that the power series ∑ z^n / n^2 converges at every point of the unit circle.
We state the result for series indexed from n = 1 by shifting the index: ∑_{n ≥ 1} z^n / n^2.
-/

theorem Shakarchi_exercise_1_19b (z : ℂ) (hz : Complex.abs z = 1) :
  Summable (fun n : ℕ => z^(n+1) / ((n+1 : ℂ) ^ 2)) := by
  -- Proof omitted.
  sorry
