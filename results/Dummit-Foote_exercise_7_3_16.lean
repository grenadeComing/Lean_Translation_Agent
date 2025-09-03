import Mathlib

section

variable {R S : Type _} [Ring R] [Ring S]
variable (φ : R →+* S) (hφ : Function.Surjective φ)

def center (T : Type _) [Ring T] : Set T := { x | ∀ y : T, x * y = y * x }

theorem image_center_subset_center : (φ : R → S) '' (center R) ⊆ center S := by sorry

end
