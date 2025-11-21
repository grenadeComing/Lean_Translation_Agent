import Mathlib

open MeasureTheory Set

/-- Let f : ℝ → ℝ be a Riemann integrable function with ∫_{-∞}^∞ |f(x)| dx < ∞. Let g : ℝ → ℝ be continuous and equal to zero outside of the interval [a,b]. Show that the convolution (g * f)(x) := ∫_{-∞}^∞ f(t) g(x-t) dt is well-defined for all x ∈ ℝ. -/
theorem convolution_well_defined (f g : ℝ → ℝ) {a b : ℝ}
  (hg : Continuous g)
  (hgsupp : ∀ x, x ∉ Icc a b → g x = 0)
  (hfi : ∫ x : ℝ, |f x| ∂volume < ⊤) :
  ∀ x : ℝ, Integrable (fun t => f t * g (x - t)) := by sorry