import Mathlib

open MeasureTheory Set

/-- Let f : ℝ → ℝ be integrable (L1) and g : ℝ → ℝ be continuous and vanish outside [a, b].
    Then for every x the function t ↦ f t * g (x - t) is integrable (w.r.t. volume), so the
    convolution (g * f)(x) := ∫ t, f t * g (x - t) ∂volume is well-defined. -/
theorem convolution_well_defined {f g : ℝ → ℝ} {a b : ℝ}
  (hf : Integrable f volume) (hg_cont : Continuous g) (hg_zero : ∀ x, x ∉ Icc a b → g x = 0) :
  ∀ x : ℝ, Integrable (fun t => f t * g (x - t)) volume := by sorry
