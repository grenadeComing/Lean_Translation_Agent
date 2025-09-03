import Mathlib

/-!
Exercise: If T is a normal linear operator on an inner product space V (finite-dimensional),
prove range T = range T^*.
-/

variable {𝕜 : Type*} [RCLike 𝕜]
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace 𝕜 V] [FiniteDimensional 𝕜 V]

theorem range_eq_range_adjoint_of_normal (T : V →ₗ[𝕜] V)
  (hT : (LinearMap.adjoint T).comp T = T.comp (LinearMap.adjoint T)) :
  LinearMap.range T = LinearMap.range (LinearMap.adjoint T) := by sorry
