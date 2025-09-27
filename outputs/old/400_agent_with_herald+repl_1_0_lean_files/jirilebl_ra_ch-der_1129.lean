import Mathlib

/-- Let f : (a,b) → ℝ be continuous on (a,b) and differentiable on (a,b) \ {c} for some c ∈ (a,b).
    Assume lim_{x→c} f'(x) = L exists. Then f is differentiable at c and f'(c) = L. -/
theorem differentiable_at_of_deriv_tendsto {a b c L : ℝ} {f : ℝ → ℝ}
  (hpos : a < c ∧ c < b)
  (hcont : ContinuousOn f (Set.Ioo a b))
  (hdiff : DifferentiableOn ℝ f (Set.Ioo a b \ {c}))
  (hderiv_lim : Tendsto (fun x => derivWithin f (Set.Ioo a b \ {c}) x) (nhdsWithin c (Set.Ioo a b \ {c})) (nhds L)) :
  DifferentiableAt ℝ f c ∧ deriv f c = L := by sorry
