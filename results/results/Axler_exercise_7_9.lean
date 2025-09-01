import Mathlib

/-- Exercise: A normal operator on a complex finite-dimensional inner product space
    is self-adjoint iff all its eigenvalues are real. -/
theorem Axler_exercise_7_9 {E : Type _} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    [FiniteDimensional ℂ E] (T : E →ₗ[ℂ] E)
    (h_normal : T.comp (LinearMap.adjoint T) = (LinearMap.adjoint T).comp T) :
  (T = LinearMap.adjoint T) ↔
    ∀ (μ : ℂ), (∃ v : E, v ≠ 0 ∧ T v = μ • v) → μ.im = 0 := by sorry
