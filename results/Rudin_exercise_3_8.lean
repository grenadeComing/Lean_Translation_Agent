import Mathlib

/-- Abel's test: If Σ a_n converges, and (b_n) is monotone and bounded,
then Σ a_n * b_n converges. -/
theorem Rudin_exercise_3_8 (a b : ℕ → ℝ) (ha : Summable a)
  (hb_mono : Monotone b) (hb_bdd : ∃ C : ℝ, 0 ≤ C ∧ ∀ n, |b n| ≤ C) :
  Summable fun n => a n * b n := by sorry
