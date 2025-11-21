import Mathlib

/-- Let X be a path connected and locally simply connected topological space. Let p : \tilde{X} → X be a covering map. Let f : \tilde{X} ≃ₜ \tilde{X} be a homeomorphism satisfying p ∘ f = p (a deck transformation). Then for any path γ : I → X and any lift γ̃ : I → \tilde{X} of γ (i.e. p ∘ γ̃ = γ), the composition f ∘ γ̃ is also a lift of γ (i.e. p ∘ (f ∘ γ̃) = γ). -/
theorem deck_transformation_takes_lift_to_lift {X E : Type*} [TopologicalSpace X] [TopologicalSpace E]
  [PathConnectedSpace X] [LocallySimplyConnectedSpace X]
  {p : E → X} (hp : IsCoveringMap p) (f : E ≃ₜ E) (hf : p ∘ f = p) :
  ∀ {I : Type*} (γ : I → X) (γtil : I → E), (p ∘ γtil = γ) → (p ∘ (f ∘ γtil) = γ) := by sorry