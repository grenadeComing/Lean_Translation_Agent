import Mathlib

open Set

noncomputable def s (n : ℕ) (x : ℝ) : ℝ := (Finset.range (n+1)).sum fun k => x ^ (k : ℕ)

noncomputable def limit (x : ℝ) : ℝ := 1 / (1 - x)

theorem geometric_series_not_uniform_on_Ioo :
  ¬ (∀ ε > 0, ∃ N : ℕ, ∀ n ≥ N, ∀ x ∈ Ioo (-1 : ℝ) 1, |s n x - limit x| < ε) := by sorry
