import Mathlib

/-
Suppose T ∈ L(V) is such that every subspace of V with dimension dim V - 1 is invariant under T.
Prove that T is a scalar multiple of the identity operator.
-/

open LinearMap Submodule

theorem Axler_exercise_5_13 {K : Type*} [Field K] {V : Type*} [AddCommGroup V] [Module K V]
  [FiniteDimensional K V] [SMul K (V →ₗ[K] V)] (T : V →ₗ[K] V)
  (h : ∀ (φ : V →ₗ[K] K), φ ≠ 0 → Submodule.map T (LinearMap.ker φ) ≤ LinearMap.ker φ) :
  ∃ (c : K), T = c • (LinearMap.id : V →ₗ[K] V) := by sorry
