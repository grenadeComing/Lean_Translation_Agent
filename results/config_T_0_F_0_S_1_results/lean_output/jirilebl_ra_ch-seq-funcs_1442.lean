import Mathlib

open BigOperators

/-- f_n(x) = x / (1 + (n * x)^2) -/
def f_n (n : ℕ) (x : ℝ) : ℝ := x / (1 + (n * x) ^ 2)

/-- g_n(x) = sum_{k=1}^n 2^{-k} f_n(x - a_k), where a : ℕ → ℚ enumerates the rationals -/
def g_n (a : ℕ → ℚ) (n : ℕ) (x : ℝ) : ℝ :=
  ∑ i in Finset.range n, (1 / 2 : ℝ) ^ (i + 1) * f_n n (x - (a i : ℝ))

theorem jirilebl_ra_ch_seq_funcs_1442 (a : ℕ → ℚ) :
  -- g_n -> 0 uniformly on ℝ: for every ε>0 there is N s.t. for all n≥N and all x, |g_n x| ≤ ε
  ∀ ε > 0, ∃ N : ℕ, ∀ n ≥ N, ∀ x : ℝ, |g_n a n x| ≤ ε := by sorry