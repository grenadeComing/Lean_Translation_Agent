import Mathlib

open ENNReal Set

variable {n : Nat}

theorem mstar_union_le {mstar : Set (Fin n → ℝ) → ENNReal}
  (h_sub : ∀ (s : ℕ → Set (Fin n → ℝ)), mstar (⋃ i, s i) ≤ ∑' i, mstar (s i))
  (A B : Set (Fin n → ℝ)) :
  mstar (A ∪ B) ≤ mstar A + mstar B := by sorry
