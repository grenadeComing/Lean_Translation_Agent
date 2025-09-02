import Mathlib

/-- Suppose that f(x) = ∑_{i=0}^∞ c_i x^i is a power series with each coefficient c_i equal to 0 or 1.
    Show that if f(2/3) = 3/2, then f(1/2) is irrational. -/
theorem putnam_exercise_2017_b3 (c : ℕ → ℕ)
  (h01 : ∀ i, c i = 0 ∨ c i = 1)
  (hconv23 : Summable (fun i => (c i : ℝ) * (2/3) ^ i))
  (hval23 : (∑' i, (c i : ℝ) * (2/3) ^ i) = 3 / 2) :
  Irrational (∑' i, (c i : ℝ) * (1 / 2) ^ i) := by sorry
