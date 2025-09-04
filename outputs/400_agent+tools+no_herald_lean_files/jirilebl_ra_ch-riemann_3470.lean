import Mathlib

open MeasureTheory

theorem convolution_well_defined {f g : ℝ → ℝ} {a b : ℝ}
  (hf : MeasureTheory.Integrable (fun t => |f t|))
  (hg_cont : Continuous g)
  (hg_supp : ∀ x, x < a ∨ x > b → g x = 0) :
  ∀ x : ℝ, MeasureTheory.Integrable (fun t => f t * g (x - t)) := by
  sorry
