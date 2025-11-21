import Mathlib

/-- Suppose X ⊆ ℝ^n is such that for every ε>0 there exists a set Y ⊇ X with m*(Y) ≤ ε,
where m* is an outer-measure-like function on ℝ^n. Then X has measure zero (that is, m*(X)=0).

This statement is formalized for X : Set (Fin n → ℝ) and an abstract function
mstar : Set (Fin n → ℝ) → ENNReal satisfying monotonicity. -/
theorem measure_zero_of_outer_approx {n : Nat} (X : Set (Fin n → ℝ))
  (mstar : Set (Fin n → ℝ) → ENNReal)
  (mono : ∀ A B : Set (Fin n → ℝ), A ⊆ B → mstar A ≤ mstar B)
  (h : ∀ ε : ENNReal, 0 < ε → ∃ Y : Set (Fin n → ℝ), X ⊆ Y ∧ mstar Y ≤ ε) :
  mstar X = 0 := by sorry
