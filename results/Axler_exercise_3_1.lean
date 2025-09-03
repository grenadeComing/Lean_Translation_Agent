import Mathlib

variable {F : Type*} [Field F]
variable {V : Type*} [AddCommGroup V] [Module F V]

/-- Exercise: If V is one-dimensional and T : V → V is linear, then T is scalar multiplication. -/
theorem Axler_exercise_3_1 (v0 : V) (hv0 : v0 ≠ 0) (hspan : ∀ v : V, ∃ a : F, v = a • v0) (T : V →ₗ[F] V) :
  ∃ a : F, ∀ v : V, T v = a • v := by sorry
