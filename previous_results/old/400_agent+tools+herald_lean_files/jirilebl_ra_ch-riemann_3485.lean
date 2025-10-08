import Mathlib

open MeasureTheory Filter

theorem improper_integral_exists_iff_tails_small (f : ℝ → ℝ)
  (h_int : ∀ M, IntervalIntegrable f volume 0 M)
  (h_abs : True) :
  (∃ L, Tendsto (fun R => intervalIntegral f 0 R volume) atTop (nhds L)) ↔
  (∀ ε > 0, ∃ M, ∀ R, M ≤ R → |intervalIntegral f M R volume| < ε) := by sorry
