import Mathlib

/--
If T is normal (T * T^* = T^* * T) on a finite-dimensional inner product space, then
range T = range T^*.
-/

theorem Axler_exercise_7_6 {𝕜 : Type _} [RCLike 𝕜] [IsROrC 𝕜]
  {E : Type _} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [FiniteDimensional 𝕜 E]
  (T : E →ₗ[𝕜] E)
  (h_normal : T.comp (LinearMap.adjoint T) = (LinearMap.adjoint T).comp T) :
  LinearMap.range T = LinearMap.range (LinearMap.adjoint T) := by sorry
