import Mathlib

open Filter
open IntervalIntegral
open Real
open Topology

open scoped Real

/-- Show that ∫_{0}^{∞} sin x / x dx = π / 2. We state this as the improper integral
    given by the limit of integrals on [0, R] as R → ∞. -/
theorem integral_sin_div_id_tendsto :
  Tendsto (fun R : ℝ => ∫ x in 0..R, (sin x) / x) atTop (𝓝 (π / 2)) := by sorry
