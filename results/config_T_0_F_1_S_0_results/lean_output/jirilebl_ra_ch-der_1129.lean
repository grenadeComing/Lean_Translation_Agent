import Mathlib

/--
Let f : (a,b) → ℝ be continuous and differentiable on (a,b) \ {c} for some c ∈ (a,b).
Assume lim_{x → c} f'(x) = L exists. Then f is differentiable at c and f'(c) = L.
-/
theorem jirilebl_ra_ch_der_1129 {a b c L : ℝ} {f : ℝ → ℝ}
  (ha : a < b) (hc : c ∈ Set.Ioo a b)
  (hf_cont : ContinuousOn f (Set.Ioo a b))
  (hf_diff : DifferentiableOn ℝ f ((Set.Ioo a b) \ {c}))
  (h_lim : Filter.Tendsto (fun x => deriv f x) (nhdsWithin c ((Set.Ioo a b) \ {c})) (nhds L)) :
  DifferentiableAt ℝ f c ∧ deriv f c = L := by sorry
