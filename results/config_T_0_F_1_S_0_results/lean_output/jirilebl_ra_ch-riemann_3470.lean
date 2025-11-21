import Mathlib

open MeasureTheory

theorem jirilebl_ra_ch_riemann_3470 (f g : ℝ → ℝ) {a b : ℝ}
  (hf : MeasureTheory.Integrable (fun x => abs (f x)) MeasureTheory.volume)
  (hg : Continuous g)
  (h_support : ∀ x, x ∉ Set.Icc a b → g x = 0) :
  ∀ x : ℝ, MeasureTheory.Integrable (fun t => f t * g (x - t)) MeasureTheory.volume := by sorry