import Mathlib

open Filter
open MeasureTheory
open Set

/-- Let f : ℝ → ℝ. Suppose f is Riemann integrable on every interval [0, M] and ∫_0^∞ |f| < ∞.
Show that the improper integral ∫_0^∞ f exists iff for every ε > 0 there exists an M such that for all R ≥ M, |∫_M^R f| < ε. -/
theorem jirilebl_ra_ch_riemann_3485 {f : ℝ → ℝ}
  (h_int : ∀ M : ℝ, IntervalIntegrable f volume (0 : ℝ) M)
  (h_abs : (∫⁻ x in Ioi (0 : ℝ), ‖f x‖₊) < ⊤) :
  (∃ L : ℝ, Tendsto (fun R => (∫ x in (0 : ℝ)..R, f x)) atTop (nhds L)) ↔
  (∀ ε : ℝ, ε > 0 → ∃ M : ℝ, ∀ R : ℝ, R ≥ M → |(∫ x in M..R, f x)| < ε) := by sorry
