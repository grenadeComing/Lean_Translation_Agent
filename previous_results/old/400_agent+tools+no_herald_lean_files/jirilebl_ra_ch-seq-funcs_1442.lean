import Mathlib

noncomputable section

open Finset

/-- f_n(x) = x / (1 + (n x)^2) -/
def f (n : ℕ) (x : ℝ) : ℝ := x / (1 + (↑n * x) ^ 2)

/-- g_n(x) = ∑_{k=1}^n 2^{-k} f_n(x - a_k), where a : ℕ → ℚ is an enumeration of ℚ -/
def g (a : ℕ → ℚ) (n : ℕ) (x : ℝ) : ℝ :=
  Finset.sum (range n) fun k => (1 : ℝ) / (2 : ℝ) ^ (k + 1) * f n (x - (a (k + 1) : ℝ))

/-- g_n → 0 uniformly on ℝ. -/
theorem jirilebl_ra_ch_seq_funcs_1442 (a : ℕ → ℚ) :
  ∀ ε > 0, ∃ N : ℕ, ∀ n ≥ N, ∀ x : ℝ, |g a n x| ≤ ε := by
  -- proof omitted
  sorry

end noncomputable
