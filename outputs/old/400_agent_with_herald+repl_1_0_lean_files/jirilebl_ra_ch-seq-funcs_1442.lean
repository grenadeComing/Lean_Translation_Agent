import Mathlib

open BigOperators

/-- f_n(x) = x / (1 + (n x)^2) -/
def f (n : ℕ) (x : ℝ) : ℝ :=
  x / (1 + ((n : ℝ) * x) ^ 2)

/-- g_n(x) = \sum_{k=1}^n 2^{-k} f_n(x - a_k), indexed from k = 0 to n-1 using k+1. -/
def g (a : ℕ → ℝ) (n : ℕ) (x : ℝ) : ℝ :=
  Finset.sum (Finset.range n) fun k => (1 / 2 : ℝ) ^ (k + 1) * f n (x - a (k + 1))

/-- Uniform convergence to 0: for any enumeration `a : ℕ → ℝ` (e.g., rationals), g_n -> 0 uniformly on ℝ. -/
theorem g_uniform_tendsto_zero (a : ℕ → ℝ) :
  ∀ ε : ℝ, 0 < ε → ∃ N : ℕ, ∀ n ≥ N, ∀ x : ℝ, |g a n x| ≤ ε := by sorry
