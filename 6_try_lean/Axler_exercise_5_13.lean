import Mathlib

/-!
Exercise (Axler 5.13, translated):
Suppose K is a field and V is a finite-dimensional vector space over K.
Let T : V →ₗ[K] V be a linear operator such that every subspace of V of
codimension 1 (every hyperplane) is invariant under T. Prove that T is a
scalar multiple of the identity operator.
-/

theorem axler_exercise_5_13 {K : Type*} [Field K] {V : Type*} [AddCommGroup V]
  [Module K V] [FiniteDimensional K V] (T : V →ₗ[K] V)
  (h : ∀ (φ : V →ₗ[K] K), φ ≠ 0 → ∀ v, φ v = 0 → φ (T v) = 0) :
  ∃ (c : K), T = c • (LinearMap.id : V →ₗ[K] V) := by sorry
