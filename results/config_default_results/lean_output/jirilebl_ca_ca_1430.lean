import Mathlib

/-- Suppose L ∈ ℂ. Show that lim_{z → ∞} f(z) = L in the sense of the Riemann sphere iff for every ε > 0 there exists M such that |f(z)-L| < ε whenever |z| > M. -/

theorem tendsto_riemannSphere_atTop_iff (f : ℂ → ℂ) (L : ℂ) :
  Filter.Tendsto f (Filter.cocompact ℂ) (nhds L) ↔
  ∀ ε : ℝ, ε > 0 → ∃ M : ℝ, ∀ z : ℂ, M < Norm.norm z → Norm.norm (f z - L) < ε := by sorry
