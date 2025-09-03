import Mathlib

variable {V : Type _} [InnerProductSpace ℂ V] [FiniteDimensional ℂ V]

open LinearMap

theorem Axler_exercise_7_6 (T : V →ₗ[ℂ] V) (h_normal : T.comp T.adjoint = T.adjoint.comp T) :
  LinearMap.range T = LinearMap.range T.adjoint := by sorry
