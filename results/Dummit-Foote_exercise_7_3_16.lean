import Mathlib

/-- The center of a ring: elements that commute with all others. -/
def center (T : Type _) [Ring T] : Set T := { z | ∀ t : T, z * t = t * z }

/-- If φ : R →+* S is a surjective ring homomorphism, then the image of the center of R is contained in the center of S. -/
theorem map_center_subset_center {R S : Type _} [Ring R] [Ring S] (φ : R →+* S) (hφ : Function.Surjective φ) :
  φ '' (center R) ⊆ center S := by sorry
