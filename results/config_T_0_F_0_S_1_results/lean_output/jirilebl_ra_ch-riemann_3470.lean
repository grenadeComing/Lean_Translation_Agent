import Mathlib

open MeasureTheory Set Function

/--
Let f be (Lebesgue) integrable on R (i.e. ∫ |f| < ∞). Let g be continuous and vanish outside [a,b].
Then for every x the convolution t ↦ f(t) * g(x - t) is integrable, so the convolution
(g * f)(x) := ∫ f(t) g(x - t) dt is well-defined for all x.
-/
theorem convolution_well_defined_of_integrable_and_compact_support
  (f g : ℝ → ℝ) {a b : ℝ}
  (hf : Integrable f) (hg : Continuous g) (h_support : Function.support g ⊆ Set.Icc a b) :
  ∀ x : ℝ, Integrable (fun t => f t * g (x - t)) := by sorry
