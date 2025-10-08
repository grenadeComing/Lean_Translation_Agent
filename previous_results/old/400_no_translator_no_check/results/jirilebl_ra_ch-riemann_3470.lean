import Mathlib

open MeasureTheory

/-- Let f : ℝ → ℝ be integrable (i.e. ∫ |f| < ∞). Let g : ℝ → ℝ be continuous and zero outside [a,b].
Then for each x the convolution t ↦ f t * g (x - t) is integrable (so the convolution is well-defined).
-/
theorem convolution_well_defined {f g : ℝ → ℝ} (hf : Integrable f) (a b : ℝ)
  (hg : Continuous g) (hgt : ∀ x, x < a ∨ x > b → g x = 0) :
  ∀ x, Integrable (fun t => f t * g (x - t)) := by sorry
