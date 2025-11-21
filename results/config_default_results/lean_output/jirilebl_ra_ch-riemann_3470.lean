import Mathlib

open Real

variable {f g : ℝ → ℝ} {a b : ℝ}

/-- Let f : ℝ → ℝ be Riemann integrable with ∫_{-∞}^∞ |f(x)| dx < ∞. Let g : ℝ → ℝ be continuous and
    zero outside [a,b]. Then the convolution (g * f)(x) := ∫_{-∞}^∞ f(t) g(x - t) dt is well-defined for all x.
    We express this by asserting that for each x the function t ↦ f t * g (x - t) is integrable (w.r.t. volume). -/
theorem convolution_well_defined (hf : MeasureTheory.Integrable (fun t => abs (f t)) MeasureTheory.volume)
  (hg_cont : Continuous g) (hg_support : ∀ t, t < a ∨ t > b → g t = 0) :
  ∀ x : ℝ, MeasureTheory.Integrable (fun t => f t * g (x - t)) MeasureTheory.volume := by sorry
