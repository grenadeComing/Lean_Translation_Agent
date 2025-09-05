import Mathlib

open Set Filter

variable {a b c : ℝ} {f : ℝ → ℝ} {L : ℝ}

/-- Let f : (a,b) → ℝ be continuous on (a,b) and differentiable on (a,b) \ {c}.
    If deriv f tends to L as x → c (within (a,b) \ {c}), then f is differentiable at c and f'(c) = L. -/
theorem differentiable_at_of_tendsto_deriv
  (ha : a < c) (hb : c < b)
  (hcont : ContinuousOn f (Ioo a b))
  (hdiff : DifferentiableOn ℝ f ((Ioo a b) \ {c}))
  (hlim : Tendsto (fun x => deriv f x) (nhdsWithin c ((Ioo a b) \ {c})) (𝓝 L)) :
  DifferentiableAt ℝ f c ∧ deriv f c = L := by sorry
