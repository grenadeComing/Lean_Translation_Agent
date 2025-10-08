import Mathlib

/-
Let a : ℕ → ℚ be an enumeration of the rationals and define

  g_n(x) := \sum_{k=1}^{n} 2^{-k} f_n(x-a_k),  f_n(x) := x / (1+(n x)^2).

We state that g_n → 0 uniformly on ℝ.
-/

open Real

noncomputable section

def f (n : ℕ) (x : ℝ) : ℝ := x / (1 + ((n : ℝ) * x) ^ 2)

def g (a : ℕ → ℚ) (n : ℕ) (x : ℝ) : ℝ :=
  (Finset.range n).sum fun k => (1 : ℝ) / (2 ^ (k + 1) : ℝ) * f n (x - (a (k + 1) : ℝ))

theorem g_tends_to_zero_uniform (a : ℕ → ℚ) :
  ∀ ε > 0, ∃ N, ∀ n ≥ N, ∀ x : ℝ, |g a n x| < ε := by
  -- proof omitted
  sorry

end
