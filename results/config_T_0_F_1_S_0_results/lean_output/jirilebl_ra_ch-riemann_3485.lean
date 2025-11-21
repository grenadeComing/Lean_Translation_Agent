import Mathlib

open Filter

theorem jirilebl_ra_ch_riemann_3485 {f : ℝ → ℝ}
  (h1 : ∀ M, IntervalIntegrable f MeasureTheory.volume 0 M)
  (h2 : ∃ L, Tendsto (fun R => ∫ x in 0..R, |f x|) atTop (nhds L)) :
  (∃ L, Tendsto (fun R => ∫ x in 0..R, f x) atTop (nhds L)) ↔
  (∀ ε > 0, ∃ M, ∀ R, M ≤ R → |(∫ x in M..R, f x)| < ε) := by sorry