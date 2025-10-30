import Mathlib
open Set Function Filter Asymptotics Metric Complex Bornology
open scoped Topology Filter Real

/-- Let f : ℂ → ℂ. Let L : ℂ. Show that lim_{z→∞} f z = L in the sense of the Riemann sphere is equivalent to: for every ε > 0 there exists M ∈ ℝ such that |f z - L| < ε whenever |z| > M. -/
theorem tendsto_riemannSphere_atTop_iff (f : ℂ → ℂ) (L : ℂ) :
    Tendsto f atTop (𝓝 L) ↔ ∀ ε : ℝ, 0 < ε → ∃ M : ℝ, ∀ z : ℂ, M < Complex.abs z → dist (f z) L < ε := sorry