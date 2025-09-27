import Mathlib

variable {X Y I : Type _} [TopologicalSpace X] [TopologicalSpace Y]

/--
A deck transformation is a homeomorphism h : Y ≃ₜ Y such that p ∘ h = p.
If gamma : I → X is a path and gamma_lift : I → Y is a lift (p ∘ gamma_lift = gamma), then h ∘ gamma_lift is
also a lift of gamma, since p ∘ (h ∘ gamma_lift) = (p ∘ h) ∘ gamma_lift = p ∘ gamma_lift = gamma.
This lemma formalises that statement (no proof provided here).
-/
theorem deck_transformation_preserves_lift (p : Y → X) (h : Y ≃ₜ Y) {gamma : I → X} {gamma_lift : I → Y}
  (hp : p ∘ (h.toEquiv.toFun) = p) (h_lift : p ∘ gamma_lift = gamma) :
  p ∘ ((h.toEquiv.toFun) ∘ gamma_lift) = gamma := by sorry
