import Mathlib

/-- Axler, Linear Algebra Done Right, Exercise 6.2:
    Let E be an inner product space over 𝕜 (ℝ or ℂ). For u, v ∈ E,
    inner u v = 0 iff ‖u‖ ≤ ‖u + a • v‖ for all scalars a. -/
theorem Axler_exercise_6_2 {𝕜 : Type*} [IsROrC 𝕜] {E : Type*} [InnerProductSpace 𝕜 E] {u v : E} :
  inner u v = 0 ↔ ∀ a : 𝕜, ‖u‖ ≤ ‖u + a • v‖ := by
  sorry
