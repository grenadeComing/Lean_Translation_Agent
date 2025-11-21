import Mathlib

/-!
Statement: If f : U → ℂ is holomorphic on a domain U ⊂ ℂ, then f is analytic.
Concretely: if U is open and f is complex-differentiable on U, then f is analytic on U;
moreover, for each z0 ∈ U there exists r > 0 (in fact r = distance to the complement of U)
and a formal power series p such that f has the power series p on the ball of radius r around z0.
-/

theorem holomorphic_on_analytic {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f U) :
  AnalyticOn ℂ f U ∧
  (∀ z0 ∈ U, ∃ r : ℝ, 0 < r ∧ Metric.ball z0 r ⊆ U ∧
    ∃ p : FormalMultilinearSeries ℂ ℂ ℂ,
      HasFPowerSeriesOnBall f p z0 (ENNReal.ofReal r)) := by sorry
