import Mathlib

/-!
Show that the series sum_{k=0}^\infty x^k does not converge uniformly on (-1,1).
-/

theorem geometric_series_not_uniform_on_Ioo :
  ¬ ∃ (f : ℝ → ℝ),
    ∀ ε : ℝ, ε > 0 → ∃ N : ℕ, ∀ n : ℕ, n ≥ N → ∀ x : ℝ, x ∈ Set.Ioo (-1 : ℝ) 1 →
      abs ((Finset.sum (Finset.range (n+1)) (fun k => x ^ k)) - f x) ≤ ε := by sorry
