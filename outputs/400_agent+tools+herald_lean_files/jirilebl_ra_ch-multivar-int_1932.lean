import Mathlib

/-- Suppose X ⊆ ℝ^n is such that for every ε > 0 there exists a set Y ⊇ X
with m*(Y) ≤ ε, where m* is an outer measure on ℝ^n. Then X has measure
zero: m*(X) = 0.  We state this for a generic set function mstar which is
nonnegative and monotone (these properties are satisfied by any outer
measure). -/
theorem outer_measure_zero_of_approx {n : ℕ}
  (mstar : Set (Fin n → ℝ) → ℝ)
  (mstar_nonneg : ∀ s : Set (Fin n → ℝ), 0 ≤ mstar s)
  (mstar_mono : ∀ ⦃s t : Set (Fin n → ℝ)⦄, s ⊆ t → mstar s ≤ mstar t)
  (X : Set (Fin n → ℝ))
  (h : ∀ ε, ε > 0 → ∃ Y : Set (Fin n → ℝ), X ⊆ Y ∧ mstar Y ≤ ε) : mstar X = 0 := by sorry
