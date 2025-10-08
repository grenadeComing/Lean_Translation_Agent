import Mathlib

/-- Suppose f : ℝ^n → ℝ is differentiable at x0. Then for every ε>0 there is δ>0 such that
    for all h with ‖h‖ < δ,
      ‖f(x0 + h) - f x0 - Df h‖ ≤ (‖Df‖ + ε) * ‖h‖.

This expresses the desired bound: the remainder is ≤ ‖Df‖‖h‖ plus a smaller-order term. -/

theorem differentiable_remainder_bound {𝕜 : Type _} [NontriviallyNormedField 𝕜]
  {E : Type _} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
  {F : Type _} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
  {f : E → F} {x₀ : E} {Df : E →L[𝕜] F} :
  HasFDerivAt f Df x₀ →
  ∀ ε : ℝ, ε > 0 → ∃ δ : ℝ, δ > 0 ∧ ∀ h : E, ‖h‖ < δ → ‖f (x₀ + h) - f x₀ - Df h‖ ≤ (‖Df‖ + ε) * ‖h‖ := by sorry
