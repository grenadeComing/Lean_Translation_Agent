import Mathlib

variable {K : Type _} [Field K]
variable {V : Type _} [AddCommGroup V] [Module K V] [FiniteDimensional K V]

/--
Suppose T : V →ₗ[K] V is such that every subspace of V with dimension
`finrank K V - 1` is invariant under T. Then T is a scalar multiple of the identity.
-/
theorem Axler_exercise_5_13 (T : V →ₗ[K] V)
  (h : ∀ (W : Submodule K V), finrank K W = finrank K V - 1 → ∀ w ∈ W, T w ∈ W) :
  ∃ c : K, T = c • LinearMap.id := by sorry
