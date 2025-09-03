import Mathlib
open scoped Real Topology
open Real Set Filter intervalIntegral MeasureTheory.MeasureSpace

/-- Show that $\int_0^1 \log(\sin \pi x) dx = - \log 2$. -/
theorem integral_log_sin_pi_eq_neg_log_two : ∫ x in (0 : ℝ)..1, log (sin (π * x)) = -log 2 := by sorry
