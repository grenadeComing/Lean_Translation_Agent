import Mathlib

/-!
Axler, Linear Algebra Done Right, Exercise 5.12
If every vector is an eigenvector of a linear map T, then T is a scalar multiple of the identity.
-/

variable {K : Type _} [Field K]
variable {V : Type _} [AddCommGroup V] [Module K V]

open LinearMap

theorem Axler_exercise_5_12 (T : V →ₗ[K] V)
  (h : ∀ v : V, ∃ (c : K), T v = c • v) : ∃ c : K, T = c • LinearMap.id := by sorry
