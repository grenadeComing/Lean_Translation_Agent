import Mathlib

/-- A deck transformation preserves lifts of paths: if p : Xtil → X is a covering
map and φ : Xtil ≃ₜ Xtil is a homeomorphism with p ∘ φ = p, then any lift γt of a
path γ (i.e. p ∘ γt = γ) is taken by φ to another lift of γ. -/
theorem deck_transform_preserves_lift {X : Type*} {Xtil : Type*} [TopologicalSpace X]
  [TopologicalSpace Xtil] (p : Xtil → X) (φ : Xtil ≃ₜ Xtil) (hφ : p ∘ (φ : Xtil → Xtil) = p)
  {I : Type*} (γ : I → X) (γt : I → Xtil) (hγ : p ∘ γt = γ) :
  p ∘ (φ ∘ γt) = γ := by sorry
