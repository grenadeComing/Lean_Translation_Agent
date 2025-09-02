import Mathlib

open Complex

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℂ V] [FiniteDimensional ℂ V]

/-- Exercise: A normal operator on a complex inner-product space is self-adjoint iff all its
    eigenvalues are real. -/
theorem Axler_exercise_7_9 (T : V →ₗ[ℂ] V)
  (h_normal : T.comp (LinearMap.adjoint T) = (LinearMap.adjoint T).comp T) :
  (T = LinearMap.adjoint T) ↔
    ∀ μ : ℂ, (∃ v : V, v ≠ 0 ∧ T v = μ • v) → μ.im = 0 :=
by sorry
