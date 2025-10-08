import Mathlib

open Filter Set

/--
Let f : (a,b) → ℝ be continuous and differentiable on (a,b) \ {c} for some c ∈ (a,b).
Assume lim_{x → c} f'(x) = L exists. Then f is differentiable at c and f' (c) = L.
-/
theorem jirilebl_ra_ch_der_1129 {a b c L : ℝ} {f : ℝ → ℝ}
  (h : a < c ∧ c < b)
  (hcont : ContinuousOn f (Set.Ioo a b))
  (hdiff : ∀ x ∈ Set.Ioo a b, x ≠ c → DifferentiableAt ℝ f x)
  (hlim : Tendsto (fun x => deriv f x) (nhds c) (nhds L)) :
  DifferentiableAt ℝ f c ∧ deriv f c = L := by sorry
