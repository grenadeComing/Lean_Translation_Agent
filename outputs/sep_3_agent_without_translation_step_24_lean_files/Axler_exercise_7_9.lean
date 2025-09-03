import Mathlib

/-!
Axler, Exercise 7.9 (translation):
A normal operator on a complex inner-product space is self-adjoint iff all its eigenvalues are real.
We state the theorem for finite-dimensional complex inner-product spaces so that adjoints exist.
-/

open Complex

variable {E : Type _}
  [NormedAddCommGroup E] [InnerProductSpace ℂ E] [FiniteDimensional ℂ E]

theorem axler_exercise_7_9 (A : E →ₗ[ℂ] E)
  (h_normal : A.comp A.adjoint = A.adjoint.comp A) :
  (A = A.adjoint) ↔ (∀ (μ : ℂ), (∃ v : E, v ≠ 0 ∧ A v = μ • v) → μ.im = 0) := by sorry
