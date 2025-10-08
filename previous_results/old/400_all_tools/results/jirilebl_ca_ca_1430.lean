import Mathlib

/-- Suppose L ∈ ℂ. Show that lim_{z→∞} f(z) = L in the sense of the Riemann sphere iff for every ε > 0 there exists M such that |f(z)-L| < ε whenever |z| > M. -/
theorem limit_at_infty_riemann_iff {f : ℂ → ℂ} {L : ℂ} :
  Filter.Tendsto f (Filter.comap (fun z => ‖z‖) Filter.atTop) (nhds L) ↔
    ∀ ε > 0, ∃ M : ℝ, ∀ z : ℂ, M < ‖z‖ → dist (f z) L < ε := by sorry
