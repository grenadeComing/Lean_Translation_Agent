import Mathlib

/-- Suppose K is a field and V is a vector space over K. If T : V →ₗ[K] V is a linear map such that
every vector in V is an eigenvector of T (i.e. for every v : V there exists μ : K with T v = μ • v),
then T is a scalar multiple of the identity. -/
theorem Axler_exercise_5_12 {K : Type _} [Field K] {V : Type _} [AddCommGroup V] [Module K V]
  (T : V →ₗ[K] V) (h : ∀ v : V, ∃ μ : K, T v = μ • v) : ∃ μ : K, T = μ • LinearMap.id := by sorry
