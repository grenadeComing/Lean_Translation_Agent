import Mathlib

variable {F : Type*} [Field F]
variable {V : Type*} [AddCommGroup V] [Module F V]

open LinearMap

/-- If S and T commute, then the eigenspace ker (T - μ I) is invariant under S. -/
theorem axler_exercise_5_4 (S T : V →ₗ[F] V) (h : S.comp T = T.comp S) (μ : F) :
  ∀ v : V, T v - μ • v = 0 → T (S v) - μ • (S v) = 0 := by sorry
