import Mathlib

/-- Prove that if a ∈ 𝕜, v ∈ V, and a • v = 0, then a = 0 or v = 0. -/
theorem Axler_exercise_1_4 {𝕜 : Type*} [Field 𝕜] {V : Type*} [AddCommGroup V] [Module 𝕜 V]
  (a : 𝕜) (v : V) : a • v = 0 → a = 0 ∨ v = 0 := by sorry
