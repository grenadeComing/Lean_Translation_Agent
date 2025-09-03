import Mathlib

/-!
Prove that a normal operator on a complex inner-product space is self-adjoint
iff all its eigenvalues are real.
-/

open ComplexConjugate

theorem Axler_exercise_7_9 {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
  [FiniteDimensional ℂ E] (T : E →L[ℂ] E)
  (h_normal : ContinuousLinearMap.comp T (ContinuousLinearMap.adjoint T) =
              ContinuousLinearMap.comp (ContinuousLinearMap.adjoint T) T) :
  (T = ContinuousLinearMap.adjoint T) ↔
    (∀ (μ : ℂ) (v : E), v ≠ 0 → T v = μ • v → μ.im = 0) := by sorry
