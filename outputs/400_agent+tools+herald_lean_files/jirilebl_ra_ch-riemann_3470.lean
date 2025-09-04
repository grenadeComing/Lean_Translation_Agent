import Mathlib

/-- Let f : ℝ → ℝ be integrable (i.e. ∫ |f| < ∞). Let g : ℝ → ℝ be continuous and equal to
    zero outside [a,b]. Then for every x the convolution t ↦ f t * g (x - t) is integrable, so
    the convolution (g * f)(x) := ∫ f(t) g(x-t) dt is well-defined. -/
theorem convolution_well_defined {f g : ℝ → ℝ} {a b : ℝ}
  (hf : MeasureTheory.Integrable f)
  (hg_cont : Continuous g)
  (hg_zero : ∀ t, t < a ∨ t > b → g t = 0) :
  ∀ x : ℝ, MeasureTheory.Integrable (fun t => f t * g (x - t)) := by
  sorry
