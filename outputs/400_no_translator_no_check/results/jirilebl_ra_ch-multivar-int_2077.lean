import Mathlib

open Set

variable {n : ℕ}

-- m* is the outer measure on ℝ^n defined via coverings by countably many open rectangles.
-- We state the subadditivity property (countable-subadditivity for two sets) below.
variable (mstar : Set (Fin n → ℝ) → ENNReal)

theorem mstar_union_le_add (A B : Set (Fin n → ℝ)) : mstar (A ∪ B) ≤ mstar A + mstar B := by sorry
