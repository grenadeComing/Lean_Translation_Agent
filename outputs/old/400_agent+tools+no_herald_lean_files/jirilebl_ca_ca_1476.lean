import Mathlib

open Filter

variable (f : ℂ → ℂ) (z0 : ℂ)

/--
A complex-valued function f tends to infinity (in the Riemann-sphere sense)
as z → z0 iff its complex norm tends to +∞ as a real function, i.e.
for every M > 0 there exists δ > 0 such that |f z| > M whenever |z - z0| < δ.
-/
theorem tendsto_norm_at_top_iff_forall_gt (f : ℂ → ℂ) (z0 : ℂ) :
  Filter.Tendsto (fun z => ‖f z‖) (nhds z0) atTop ↔
  ∀ M : ℝ, 0 < M → ∃ δ > 0, ∀ z : ℂ, ‖z - z0‖ < δ → ‖f z‖ > M :=
by
  sorry
