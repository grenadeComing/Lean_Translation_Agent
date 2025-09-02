import Mathlib

open LinearMap

variable {K : Type*} [Field K]
variable {V : Type*} [AddCommGroup V] [Module K V] [FiniteDimensional K V]

/-- Exercise: Suppose T : V →ₗ[K] V has a basis of eigenvectors, and S : V →ₗ[K] V has the same eigenvectors (possibly with different eigenvalues). Then S and T commute. -/
theorem Axler_exercise_5_20 {ι : Type*} [Fintype ι] (b : Basis ι K V) (T S : V →ₗ[K] V)
  (μ λ : ι → K)
  (hT : ∀ i, T (b i) = μ i • b i)
  (hS : ∀ i, S (b i) = λ i • b i) : S.comp T = T.comp S := by sorry
