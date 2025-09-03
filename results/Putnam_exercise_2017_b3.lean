import Mathlib
open BigOperators

/-- Suppose that f(x) = \sum_{i=0}^{\infty} c_i x^i is a power series with each c_i equal to 0 or 1.
    If f(2/3) = 3/2 then f(1/2) is irrational. -/
theorem putnam_exercise_2017_b3 (c : ℕ → Int)
  (hc : ∀ i, c i = 0 ∨ c i = 1)
  (hf : (∑' i, (c i : ℝ) * ((2 : ℝ) / 3) ^ i) = (3 : ℝ) / 2) :
  ¬ ∃ (p q : Int), q ≠ 0 ∧ (∑' i, (c i : ℝ) * ((1 : ℝ) / 2) ^ i) = (p : ℝ) / (q : ℝ) := by
  sorry
