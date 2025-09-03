import Mathlib

/-- If the product ∏ X_α is normal and each X_α is nonempty, then each factor X_α is normal. -/
theorem Munkres_exercise_32_2c {ι : Type _} {X : ι → Type _} [∀ α, TopologicalSpace (X α)]
  (h_nonempty : ∀ α, Nonempty (X α))
  (h : NormalSpace (∀ α, X α)) : ∀ α, NormalSpace (X α) := by
  intro α
  sorry
