import Mathlib

/-- Suppose U ⊂ ℂ is open and f : U → ℂ is holomorphic. If p ∈ U and f'(p) ≠ 0, then for sufficiently small δ > 0, f restricted to Δ_δ(p) is injective. -/
theorem inj_on_ball_of_hasDerivAt_ne_zero {f : ℂ → ℂ} {p f' : ℂ}
  (h : HasDerivAt f f' p) (hne : f' ≠ 0) : ∃ δ : ℝ, 0 < δ ∧ Set.InjOn f (Metric.ball p δ) := by sorry
