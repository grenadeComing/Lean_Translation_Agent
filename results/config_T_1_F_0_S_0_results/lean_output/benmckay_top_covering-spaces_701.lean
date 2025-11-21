import Mathlib

/-- If there exists a covering map p : ℝ → X, then X is homeomorphic to ℝ or to the circle S¹. -/
theorem benmckay_top_covering_spaces_701 {X : Type*} [TopologicalSpace X]
  (p : ℝ → X) (hp : IsCoveringMap p) :
  X ≃ₜ ℝ ∨ X ≃ₜ Circle := by sorry