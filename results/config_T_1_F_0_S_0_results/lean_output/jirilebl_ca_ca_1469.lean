import Mathlib

/-- Suppose L ∈ ℂ. Show that lim_{z→∞} f(z) = L in the sense of the Riemann sphere if and only if
for every ε > 0 there exists an M such that |f(z)-L| < ε whenever |z| > M. -/
theorem tendsto_at_infty_riemann_sphere_iff (f : Complex → Complex) (L : Complex) :
  (∀ U : Set Complex, IsOpen U → L ∈ U → ∃ M : ℝ, ∀ z : Complex, M < Complex.abs z → f z ∈ U) ↔
  (∀ ε > 0, ∃ M : ℝ, ∀ z : Complex, M < Complex.abs z → Complex.abs (f z - L) < ε) := by sorry
