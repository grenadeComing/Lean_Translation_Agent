import Mathlib

variable {K : Type _} [Field K]
variable {V : Type _} [AddCommGroup V] [Module K V] [FiniteDimensional K V]

/-- Predicate: μ is an eigenvalue of a linear endomorphism f. -/
def is_eigenvalue (f : V →ₗ[K] V) (μ : K) : Prop :=
  ∃ v : V, v ≠ 0 ∧ f v = μ • v

theorem Axler_exercise_5_11 (S T : V →ₗ[K] V) :
  {μ : K | is_eigenvalue (S.comp T) μ} = {μ : K | is_eigenvalue (T.comp S) μ} := by sorry
