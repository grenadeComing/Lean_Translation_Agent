import Mathlib

/--
Suppose K is a field and V is a finite-dimensional vector space over K.
Let T : V →ₗ[K] V be a linear map such that every subspace of V of codimension 1
(i.e., every kernel of a nonzero linear functional) is invariant under T.
Then T is a scalar multiple of the identity.
-/
theorem Axler_exercise_5_13 {K : Type _} [Field K] {V : Type _} [AddCommGroup V] [Module K V]
  [FiniteDimensional K V]
  (T : V →ₗ[K] V)
  (h : ∀ (φ : V →ₗ[K] K), φ ≠ 0 → Submodule.map T (LinearMap.ker φ) ≤ LinearMap.ker φ) :
  ∃ (c : K), T = c • LinearMap.id := by sorry
