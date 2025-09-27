import Mathlib

open MeasureTheory Set

/-- Let f : ℝ → ℝ be integrable (so ∫ |f| < ∞). Let g : ℝ → ℝ be continuous and equal to zero outside [a,b].
Then the convolution (g * f)(x) := ∫_{-∞}^{∞} f(t) g(x-t) dt is well-defined for all x : ℝ,
meaning t ↦ f t * g (x - t) is integrable for every x. -/
theorem convolution_well_defined {f g : ℝ → ℝ} {a b : ℝ}
  (hf : Integrable f volume)
  (hg_cont : Continuous g)
  (hg_support : ∀ t, t ∉ Icc a b → g t = 0) :
  ∀ x : ℝ, Integrable (fun t => f t * g (x - t)) volume := by
  sorry
