import Mathlib

variable {f : ℂ → ℂ} {L : ℂ}

/-- Suppose L ∈ ℂ. Show that lim_{z→∞} f(z) = L in the sense of the Riemann sphere iff for every
ε > 0 there exists an M such that |f(z)-L| < ε whenever |z| > M. -/
theorem tendsto_at_infty_riemann_sphere_iff_epsilon_M :
  Tendsto f (comap Complex.abs atTop) (𝓝 L) ↔
  (∀ ε : ℝ, ε > 0 → ∃ M : ℝ, ∀ z : ℂ, Complex.abs z > M → Complex.abs (f z - L) < ε) := by sorry