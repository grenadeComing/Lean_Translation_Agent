import Mathlib

/-!
Corrected/formalized statement (classic form):
If f : ℝ → ℝ is continuous on the compact interval [a, b], then f is Riemann integrable on [a, b].

The original natural-language statement about an arbitrary metric space and a totally bounded
subset is not sufficient to conclude Riemann integrability as usually defined (the Riemann
integral is defined on subsets of ℝ, typically intervals). We therefore formalize the standard
correct statement for functions on a real closed interval.
-/

open Set

theorem continuous_on_riemannIntegrableOn_Icc {a b : ℝ} {f : ℝ → ℝ} (hab : a ≤ b)
  (hf : ContinuousOn f (Icc a b)) : RiemannIntegrableOn f (Icc a b) := by sorry
