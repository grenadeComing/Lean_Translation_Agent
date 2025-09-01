import Mathlib

open LinearMap

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E] [FiniteDimensional ℂ E]

/-- Exercise: A normal operator on a finite-dimensional complex inner-product space is self-adjoint
    iff all its eigenvalues are real. -/
theorem axler_exercise_7_9 (T : E →ₗ[ℂ] E) (h_normal : T.comp (adjoint T) = (adjoint T).comp T) :
  (T = adjoint T) ↔ (∀ μ : ℂ, (∃ v : E, v ≠ 0 ∧ T v = μ • v) → μ.im = 0) := by sorry
