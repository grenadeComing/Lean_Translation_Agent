import Mathlib

open Set Filter

theorem jirilebl_ra_ch_der_1129 {a b c L : ℝ} (ha : a < c) (hb : c < b) {f : ℝ → ℝ}
  (hcont : ContinuousOn f (Ioo a b))
  (hdiff : DifferentiableOn ℝ f (Ioo a b \ {c}))
  (hlim : Tendsto (fun x => deriv f x) (nhdsWithin c (Ioo a b \ {c})) (nhds L)) :
  DifferentiableAt ℝ f c ∧ deriv f c = L := by sorry