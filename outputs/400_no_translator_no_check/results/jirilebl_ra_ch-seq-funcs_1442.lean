import Mathlib

noncomputable section

open Finset

/--
Let (a_k)_{k=1}^\infty be an enumeration of the rationals (here we take any sequence a : ℕ → ℝ).
Define f_n(x) = x / (1 + (n * x)^2) and g_n(x) = \sum_{k=1}^n 2^{-k} f_n(x - a_k).
Then g_n → 0 uniformly on ℝ.
-/

def f (n : ℕ) (x : ℝ) : ℝ := x / (1 + ((n : ℝ) * x) ^ 2)

/-- Sum from k=1 to n encoded as k in range n with index shifted by 1. -/

def g (n : ℕ) (a : ℕ → ℝ) (x : ℝ) : ℝ :=
  Finset.sum (Finset.range n) fun k => (1 / 2 : ℝ) ^ (k + 1) * f n (x - a (k + 1))

/-- Uniform convergence statement: for every ε>0 there is N such that for all n≥N and all x, |g_n(x)|<ε. -/
theorem g_tends_to_zero_uniform (a : ℕ → ℝ) :
  ∀ ε > 0, ∃ N : ℕ, ∀ n : ℕ, n ≥ N → ∀ x : ℝ, abs (g n a x) < ε := by
  sorry
