import Mathlib
open Filter

/-- Let f : (a,b) → ℝ be continuous on the open interval (a,b) and differentiable on (a,b) \ {c}
for some c ∈ (a,b). Assume lim_{x→c} f'(x) = L exists. Then f is differentiable at c and f'(c) = L. -/
theorem differentiable_at_of_tendsto_deriv (a b c L : ℝ) (ha : a < c) (hb : c < b)
  (f : ℝ → ℝ) (hf : ContinuousOn f { x | a < x ∧ x < b })
  (hd : DifferentiableOn ℝ f ({ x | a < x ∧ x < b } \ {c}))
  (hL : Filter.Tendsto (fun x => deriv f x) (nhdsWithin c ({ x | a < x ∧ x < b } \ {c})) (nhds L)) :
  HasDerivAt f L c := by sorry
