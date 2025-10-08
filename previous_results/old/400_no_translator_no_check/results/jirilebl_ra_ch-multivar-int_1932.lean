import Mathlib

open Set

variable {α : Type*}

/--
If mstar is a monotone set function taking values in ENNReal and for every ε>0 there is a
superset Y ⊇ X with mstar Y ≤ ε, then mstar X = 0.
This generalizes the usual statement for outer measure on ℝ^n.
-/
theorem outer_measure_is_zero_of_arbitrary_small_supercovers
  (mstar : Set α → ENNReal)
  (hmono : ∀ A B : Set α, A ⊆ B → mstar A ≤ mstar B)
  {X : Set α}
  (h : ∀ ε : ENNReal, 0 < ε → ∃ Y, X ⊆ Y ∧ mstar Y ≤ ε) : mstar X = 0 := by sorry
