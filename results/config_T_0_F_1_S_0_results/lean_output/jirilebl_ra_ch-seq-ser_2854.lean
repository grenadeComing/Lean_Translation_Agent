import Mathlib

open Filter
open Topology

/-- If a real series is conditionally convergent, then its terms tend to 0 but the series of
    absolute values is not summable.  -/
theorem conditionally_convergent_terms_tend_to_zero_but_not_absolutely (a : Nat → ℝ)
  (h_sum : Summable a) (h_not_abs : ¬ Summable fun n => abs (a n)) :
  (Tendsto a atTop (𝓝 0)) ∧ ¬ Summable fun n => abs (a n) := by sorry
