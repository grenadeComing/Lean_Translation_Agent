import Mathlib

/-!
Let φ : R → S be a surjective homomorphism of rings. Prove that the image of the center
of R is contained in the center of S.

We state this in Lean; proof omitted (:= by sorry).
-/

variable {R S : Type _} [Ring R] [Ring S]
variable (φ : R →+* S) (hφ : Function.Surjective φ)

theorem map_center_subset_center :
  Set.image φ { r : R | ∀ r' : R, r * r' = r' * r } ⊆ { s : S | ∀ s' : S, s * s' = s' * s } := by
  sorry
