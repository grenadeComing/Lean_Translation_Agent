import Mathlib

variable {X C Y : Type _} [TopologicalSpace X] [TopologicalSpace C] [TopologicalSpace Y]

/-- For any path connected and locally simply connected topological space X,
    a homeomorphism of the total space which preserves the projection (a deck
    transformation) takes any lift of a path to a lift of the same path. -/
theorem deck_preserves_path_lift
  (path_connected : Prop) (locally_simply_connected : Prop)
  (p : C → X) (f : C → C) (hf : p ∘ f = p)
  (γ : Y → X) (tildeγ : Y → C) (h : p ∘ tildeγ = γ) :
  p ∘ (f ∘ tildeγ) = γ := by sorry
