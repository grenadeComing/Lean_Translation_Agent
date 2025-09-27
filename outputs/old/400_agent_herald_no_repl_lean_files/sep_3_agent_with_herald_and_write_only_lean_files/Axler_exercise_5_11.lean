import Mathlib

open LinearMap

variable {K : Type*} [Field K]
variable {V : Type*} [AddCommGroup V] [Module K V] [FiniteDimensional K V]

/--
Suppose S, T ∈ L(V). Prove that ST and TS have the same eigenvalues.
We state the equivalence of existence of an eigenvector for ST and for TS.
-/
theorem axler_exercise_5_11 (S T : V →ₗ[K] V) (λ : K) :
  (∃ v : V, v ≠ 0 ∧ (S.comp T) v = λ • v) ↔ (∃ w : V, w ≠ 0 ∧ (T.comp S) w = λ • w) := by
  sorry
