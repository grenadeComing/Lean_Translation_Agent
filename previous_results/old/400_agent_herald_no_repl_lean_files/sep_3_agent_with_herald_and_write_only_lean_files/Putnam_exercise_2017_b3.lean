import Mathlib

open_locale BigOperators

/-- Putnam 2017 B3: Suppose f(x) = \sum_{i=0}^\infty c_i x^i with each c_i \in {0,1}.
If f(2/3) = 3/2 then f(1/2) is irrational. -/
theorem putnam_exercise_2017_b3
  (c : ℕ → ℤ)
  (hc : ∀ i, c i = 0 ∨ c i = 1)
  (hf : (∑' i : ℕ, (c i : ℝ) * ((2 : ℝ) / 3) ^ i) = (3 : ℝ) / 2) :
  ¬ ∃ (p q : ℤ), q ≠ 0 ∧ (∑' i : ℕ, (c i : ℝ) * ((1 : ℝ) / 2) ^ i) = (p : ℝ) / (q : ℝ) := by sorry
