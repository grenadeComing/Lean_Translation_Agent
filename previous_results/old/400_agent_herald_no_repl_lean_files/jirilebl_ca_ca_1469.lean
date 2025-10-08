import Mathlib

open Filter

/-!
Suppose L ∈ ℂ. Show that lim_{z→∞} f(z) = L in the sense of the Riemann sphere
if and only if for every ε > 0 there exists an M such that |f(z)-L| < ε
whenever |z| > M.
-/

theorem limit_at_infty_iff {f : ℂ → ℂ} {L : ℂ} :
  Tendsto f (Filter.cocompact ℂ) (𝓝 L) ↔
    (∀ ε > 0, ∃ M : ℝ, ∀ z : ℂ, Complex.abs z > M → Complex.abs (f z - L) < ε) := by sorry
