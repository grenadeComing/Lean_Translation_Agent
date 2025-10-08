import Mathlib

variable {α : Type*}
variable (mstar : Set α → ℝ)
variable (m_nonneg : ∀ A, 0 ≤ mstar A)
variable (m_mono : ∀ {A B : Set α}, A ⊆ B → mstar A ≤ mstar B)

/-- If for every ε>0 there exists a superset Y ⊇ X with m*(Y) ≤ ε, then m*(X)=0. -/
theorem outer_measure_zero_of_approx (X : Set α)
  (h : ∀ ε > (0 : ℝ), ∃ Y : Set α, X ⊆ Y ∧ mstar Y ≤ ε) :
  mstar X = 0 := by sorry
