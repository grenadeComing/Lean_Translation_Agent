import Mathlib

/-- If Σ a_n converges, and {b_n} is monotone and bounded, then Σ a_n b_n converges. -/
theorem Rudin_exercise_3_8 (a b : ℕ → ℝ) (ha : Summable a)
  (hb_mon : Monotone b ∨ Antitone b)
  (hb_bdd : ∃ M, 0 ≤ M ∧ ∀ n, abs (b n) ≤ M) :
  Summable fun n => a n * b n := by sorry
