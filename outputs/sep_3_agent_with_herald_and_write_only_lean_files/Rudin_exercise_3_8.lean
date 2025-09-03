import Mathlib

/-- If \sum a_n converges and b_n is monotone and bounded then \sum a_n b_n converges. -/
theorem Rudin_exercise_3_8 (a b : ℕ → ℝ)
  (ha : Summable a)
  (hb_mono : Monotone b)
  (hb_bdd : ∃ M : ℝ, 0 ≤ M ∧ ∀ n, |b n| ≤ M) :
  Summable fun n => a n * b n := by sorry
