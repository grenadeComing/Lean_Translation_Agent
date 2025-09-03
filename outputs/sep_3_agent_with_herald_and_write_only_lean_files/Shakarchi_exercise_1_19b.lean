import Mathlib
open Set Function Filter Asymptotics Metric Complex Bornology
open scoped Topology Filter Real

/-- Prove that the power series $\sum z^n / n^2$ converges at every point of the unit circle. -/
theorem powerSeries_summable_on_circle (z : ℂ) (hz : ‖z‖ = 1) :
  Summable fun n => z^n / n ^ 2 := by sorry
