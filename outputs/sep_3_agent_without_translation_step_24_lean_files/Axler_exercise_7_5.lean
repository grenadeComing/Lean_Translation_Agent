import Mathlib

open LinearMap

-- Normal operator: T T* = T* T
def is_normal {𝕜 : Type _} {V : Type _} [RCLike 𝕜] [NormedAddCommGroup V] [InnerProductSpace 𝕜 V]
  [FiniteDimensional 𝕜 V] (T : V →ₗ[𝕜] V) : Prop :=
  T.comp T.adjoint = T.adjoint.comp T

-- For the 2-dimensional Euclidean space, the set of normal operators is not a subspace.
theorem Axler_exercise_7_5 :
  ∃ (T S : EuclideanSpace ℝ (Fin 2) →ₗ[ℝ] EuclideanSpace ℝ (Fin 2)),
    is_normal T ∧ is_normal S ∧ ¬ is_normal (T + S) := by
  -- proof omitted
  sorry
