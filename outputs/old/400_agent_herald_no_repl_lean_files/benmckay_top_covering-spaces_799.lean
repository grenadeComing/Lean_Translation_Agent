import Mathlib

/-!
Prove that, for any path connected and locally simply connected topological space X,
a homeomorphism \tilde{X} ≅ \tilde{X} which preserves the covering map \tilde{X} → X
(a deck transformation) takes any lift of a path to a lift of the same path.
-/

theorem deck_transformation_preserve_lift_path {X Ẋ I : Type*}
  [TopologicalSpace X] [TopologicalSpace Ẋ] [TopologicalSpace I]
  -- the hypotheses below (path connected, locally simply connected, covering map)
  -- are part of the usual covering-space setup; we record them as assumptions
  -- but the statement that follows does not need their detailed use.
  [PathConnectedSpace X] [LocallySimplyConnectedSpace X]
  {π : Ẋ → X} (hπ : CoveringMap π)
  (φ : Homeomorph Ẋ Ẋ) (hcomm : π ∘ φ.toFun = π)
  {γ : I → X} {γ̃ : I → Ẋ} (hlift : π ∘ γ̃ = γ) :
  π ∘ (φ.toFun ∘ γ̃) = γ := by sorry
