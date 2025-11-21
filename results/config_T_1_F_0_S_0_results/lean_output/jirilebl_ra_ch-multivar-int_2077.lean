import Mathlib

/-- Let m^* be the outer measure on ℝ^n defined via coverings by countably many open rectangles.
    The following states the subadditivity of m^* for unions of two sets. -/

variable {n : ℕ}

/-- mstar denotes the outer measure on ℝ^n (defined via countable coverings by open rectangles). -/
variable (mstar : Set (Fin n → ℝ) → ENNReal)

theorem outer_measure_union_le (A B : Set (Fin n → ℝ)) :
  mstar (A ∪ B) ≤ mstar A + mstar B := by sorry