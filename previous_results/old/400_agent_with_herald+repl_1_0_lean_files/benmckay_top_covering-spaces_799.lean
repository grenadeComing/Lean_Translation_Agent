import Mathlib

variable {X Xtil : Type*} [TopologicalSpace X] [TopologicalSpace Xtil]
variable {I : Type*} [TopologicalSpace I]

/-- If g : X~ → X~ satisfies p ∘ g = p, then g takes any lift γ̃ of a path γ to a lift of the same path. -/
theorem deck_transformation_preserves_lifts
  (p : Xtil → X) (g : Xtil → Xtil)
  (hg : p ∘ g = p)
  {γ : I → X} {γtil : I → Xtil} (hγ : p ∘ γtil = γ) :
  p ∘ (g ∘ γtil) = γ := by sorry
