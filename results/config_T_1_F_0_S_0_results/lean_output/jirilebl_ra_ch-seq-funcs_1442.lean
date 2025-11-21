import Mathlib

/-- f_n(x) = x / (1 + (n x)^2) as a function of n and x. -/
def f (n : ℕ) (x : ℝ) : ℝ := x / (1 + ((n : ℝ) * x) ^ 2)

/-- g_n(x) = \sum_{k=1}^n 2^{-k} f_n(x - a_k), where a : ℕ → ℚ enumerates the rationals. -/
def g (a : ℕ → ℚ) (n : ℕ) (x : ℝ) : ℝ :=
  ∑ k in Finset.range n, (1 : ℝ) / (2 : ℝ) ^ (k + 1) * f n (x - (a (k + 1) : ℝ))

/-- Let `a : ℕ → ℚ` be an enumeration of the rationals. Then g_n → 0 uniformly on ℝ.
    (Statement only; proof omitted.) -/
theorem g_n_tends_to_zero_uniformly_on_real (a : ℕ → ℚ) :
  ∀ ε > 0, ∃ N : ℕ, ∀ n : ℕ, n ≥ N → ∀ x : ℝ, |g a n x| ≤ ε := by sorry