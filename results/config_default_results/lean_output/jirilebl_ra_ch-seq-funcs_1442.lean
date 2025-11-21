import Mathlib

open Finset

noncomputable def f (n : ℕ) (x : ℝ) : ℝ := x / (1 + (↑n * x) ^ 2)

noncomputable def g (a : ℕ → ℚ) (n : ℕ) (x : ℝ) : ℝ :=
  Finset.sum (range n) fun k => (1 / 2 : ℝ) ^ (k + 1) * f n (x - (a (k + 1) : ℝ))

/-- The sequence g_n converges uniformly to 0 on R. -/
theorem g_tends_to_zero_uniformly (a : ℕ → ℚ) :
  ∀ ε > 0, ∃ N : ℕ, ∀ n ≥ N, ∀ x : ℝ, |g a n x| ≤ ε := by sorry
