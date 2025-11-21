import Mathlib

/--
If X is path connected and locally simply connected, then any homeomorphism
of a covering space \tilde{X} that preserves the covering map (a deck
transformation) sends any lift of a path to a lift of the same path.

This is the formal statement: for any spaces X, \tilde{X} and interval I,
any map p : \tilde{X} → X and any map φ : \tilde{X} → \tilde{X} with
p ∘ φ = p, if γ : I → X and γ̃ : I → \tilde{X} satisfy p ∘ γ̃ = γ, then
p ∘ (φ ∘ γ̃) = γ.
-/
theorem deck_transformation_preserves_lifts
  {X Xtilde I : Type*} [TopologicalSpace X] [TopologicalSpace Xtilde] [TopologicalSpace I]
  (IsPathConnectedX : IsPathConnected X) (IsLocallySimplyConnectedX : IsLocallySimplyConnected X)
  (p : Xtilde → X) (φ : Xtilde → Xtilde) (h_comm : p ∘ φ = p)
  (γ : I → X) (γtilde : I → Xtilde) (h_lift : p ∘ γtilde = γ) :
  p ∘ (φ ∘ γtilde) = γ := by sorry