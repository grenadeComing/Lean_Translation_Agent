import Mathlib

variable {n : ℕ}

variable (mstar : Set (Fin n → ℝ) → ENNReal)
variable (h_empty : mstar ∅ = 0)
variable (h_union_le : ∀ s t : Set (Fin n → ℝ), mstar (s ∪ t) ≤ mstar s + mstar t)
variable (h_mono : ∀ s t : Set (Fin n → ℝ), s ⊆ t → mstar s ≤ mstar t)

theorem outer_measure_union_null (A B : Set (Fin n → ℝ)) (hB : mstar B = 0) :
  mstar (A ∪ B) = mstar A := by sorry
