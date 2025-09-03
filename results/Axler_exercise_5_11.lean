import Mathlib

variable {K : Type _} [Field K]
variable {V : Type _} [AddCommGroup V] [Module K V] [FiniteDimensional K V]

/-- A scalar k is an eigenvalue of a linear map f if there exists a nonzero v with f v = k • v. -/
def is_eigenvalue (f : V →ₗ[K] V) (k : K) : Prop := ∃ v : V, v ≠ 0 ∧ f v = k • v

/-- Exercise (Axler 5.11): For linear maps S, T on a finite-dimensional vector space, ST and TS have the same eigenvalues. -/
theorem Axler_exercise_5_11 (S T : V →ₗ[K] V) : ∀ k : K, is_eigenvalue (S.comp T) k ↔ is_eigenvalue (T.comp S) k := by
  sorry
