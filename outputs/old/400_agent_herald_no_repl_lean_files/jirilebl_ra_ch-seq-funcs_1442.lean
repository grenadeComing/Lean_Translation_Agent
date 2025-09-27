import Mathlib

open Finset

/-- f_n(x) = x / (1 + (n x)^2) -/
def f (n : ℕ) (x : ℝ) : ℝ := x / (1 + ((n : ℝ) * x) ^ 2)

/-- g_n(x) = \sum_{k=1}^n 2^{-k} f_n(x - a_k), where a : ℕ → ℚ is an enumeration of ℚ -/
def g (a : ℕ → ℚ) (n : ℕ) (x : ℝ) : ℝ :=
  ∑ k in Finset.Ico 1 (n + 1), (1 / 2 : ℝ) ^ k * f n (x - (a k : ℝ))

/-- g_n → 0 uniformly on ℝ. -/
theorem g_tends_to_zero_uniformly (a : ℕ → ℚ) :
  ∀ ε > 0, ∃ N, ∀ n ≥ N, ∀ x : ℝ, |g a n x| < ε := by sorry
