import Mathlib

variable {V : Type _} [NormedAddCommGroup V] [InnerProductSpace ℂ V] [FiniteDimensional ℂ V]

/-- Suppose V is a complex inner-product space. Every normal operator on V has a square root.
    Here normality of T is expressed as T.comp (LinearMap.adjoint T) = (LinearMap.adjoint T).comp T.
    The statement asserts the existence of S : V →ₗ[ℂ] V with S.comp S = T. -/
theorem axler_exercise_7_11 (T : V →ₗ[ℂ] V)
  (hT : T.comp (LinearMap.adjoint T) = (LinearMap.adjoint T).comp T) :
  ∃ S : V →ₗ[ℂ] V, S.comp S = T := by
  sorry
