import Mathlib

open Set
open Filter

theorem jirilebl_ra_ch_approximate_948
  {a b : ℝ} (f : ℕ → ℝ → ℝ) (f_lim g : ℝ → ℝ)
  (h_unif : TendstoUniformlyOn f f_lim atTop (Icc a b))
  (h_g : ContinuousOn g (Icc a b)) :
  Tendsto (fun n =>
    MeasureTheory.integral (MeasureTheory.Measure.restrict MeasureTheory.MeasureSpace.volume (Icc a b)) (fun x => f n x * g x))
    atTop
    (nhds (MeasureTheory.integral (MeasureTheory.Measure.restrict MeasureTheory.MeasureSpace.volume (Icc a b)) (fun x => f_lim x * g x))) := by sorry
