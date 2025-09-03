import Mathlib

theorem Rudin_exercise_3_8 {a b : ℕ → ℝ} (ha : Summable a) (hb_mono : Monotone b)
  (hb_bound : ∃ M : ℝ, ∀ n, |b n| ≤ M) : Summable (fun n => a n * b n) := by sorry
