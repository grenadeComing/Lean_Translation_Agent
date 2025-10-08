import Mathlib

/-!
Exercise (Axler 5.12) - Suppose T ∈ L(V) is such that every vector in V is an eigenvector of T.
Prove that T is a scalar multiple of the identity operator.
-/

variable {K : Type*} [Field K]
variable {V : Type*} [AddCommGroup V] [Module K V]

open LinearMap

theorem Axler_exercise_5_12 (T : V →ₗ[K] V)
  (h : ∀ v : V, ∃ λ : K, T v = λ • v) : ∃ c : K, T = c • LinearMap.id := by sorry
