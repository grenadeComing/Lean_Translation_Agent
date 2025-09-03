import Mathlib

open LinearMap

variable {K : Type*} [Field K]
variable {V : Type*} [AddCommGroup V] [Module K V] [FiniteDimensional K V]

/--
Suppose T has a basis b of eigenvectors with eigenvalues eigT, and S acts diagonally on the same basis with eigenvalues eigS.
Then S and T commute (they are simultaneously diagonal in the basis b).
-/
theorem Axler_exercise_5_20 (T S : V →ₗ[K] V)
  (b : Fin (finrank K V) → V) (hb : IsBasis K b)
  (eigT eigS : Fin (finrank K V) → K)
  (hT : ∀ i, T (b i) = eigT i • b i)
  (hS : ∀ i, S (b i) = eigS i • b i) :
  S.comp T = T.comp S := by sorry
