import Mathlib

variable {R S : Type _} [Ring R] [Ring S]

/-- The center of a ring: elements that commute with all others. -/
def center (A : Type _) [Ring A] : Set A := { z | ∀ r : A, z * r = r * z }

/-- If φ : R → S is a surjective ring homomorphism, then the image of the center of R
    is contained in the center of S. -/
theorem map_center_subset_center (φ : R →+* S) (hφ : Function.Surjective φ) :
  φ '' (center R) ⊆ (center S) := by sorry
