import Mathlib

/--
Exercise: Suppose that T ∈ L(V) has dim V distinct eigenvalues and that S ∈ L(V)
has the same eigenvectors as T (not necessarily with the same eigenvalues).
Prove that S T = T S.

We formalize the hypothesis by assuming there is a finite index type ι and a
family b : ι → V which is a basis of V (expressed by linear independence and
spanning). We assume T and S act diagonally on this basis: T (b i) = μ i • b i
and S (b i) = ν i • b i. Then S and T commute.
-/

theorem Axler_exercise_5_20 {K V : Type*} [Field K] [AddCommGroup V] [Module K V]
  [FiniteDimensional K V] (T S : V →ₗ[K] V) :
  (∃ (ι : Type*) (b : ι → V) (μ ν : ι → K) (fint : Fintype ι),
    LinearIndependent K (fun i => b i) ∧ Submodule.span K (Set.range b) = ⊤ ∧
    (∀ i, T (b i) = μ i • b i) ∧ (∀ i, S (b i) = ν i • b i)) →
  S.comp T = T.comp S := by
  sorry
