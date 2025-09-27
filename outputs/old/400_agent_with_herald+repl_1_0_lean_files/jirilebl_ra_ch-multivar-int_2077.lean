import Mathlib

variable {n : Nat}

variable (mstar : Set (Fin n -> ℝ) → ENNReal)

variable (mstar_countable_subadditive :
  ∀ (fs : ℕ → Set (Fin n -> ℝ)), mstar (⋃ i, fs i) ≤ ∑' i, mstar (fs i))

theorem outer_measure_union_le {A B : Set (Fin n -> ℝ)} :
  mstar (A ∪ B) ≤ mstar A + mstar B := by sorry
