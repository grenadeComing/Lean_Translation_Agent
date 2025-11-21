import Mathlib

open Filter

/--
For a function f : ℂ → ℂ and a finite complex number L, the limit of f(z) as z → ∞
(in the sense that |z| → ∞) equals L iff for every ε > 0 there exists M such that
|f(z) - L| < ε whenever |z| > M.
-/
theorem tendsto_at_infty_iff_abs (f : ℂ → ℂ) (L : ℂ) :
  Tendsto f (comap (fun z : ℂ => ‖z‖) Filter.atTop) (𝓝 L) ↔
    ∀ ε : ℝ, ε > 0 → ∃ M : ℝ, ∀ z : ℂ, ‖z‖ > M → ‖f z - L‖ < ε :=
by sorry