import Mathlib
open Filter
open Complex
open scoped Topology

/-- Suppose L ∈ ℂ. Show that lim_{z→∞} f(z) = L in the sense of the Riemann sphere if and only if
    for every ε > 0 there exists an M such that |f(z) - L| < ε whenever ∥ z ∥ > M. -/
theorem tendsto_riemann_sphere_infty_iff {f : ℂ → ℂ} (L : ℂ) :
  Tendsto f (comap Complex.abs atTop) (𝓝 L) ↔
    ∀ ε > 0, ∃ M, ∀ z : ℂ, Complex.abs z > M → dist (f z) L < ε := by
  sorry
