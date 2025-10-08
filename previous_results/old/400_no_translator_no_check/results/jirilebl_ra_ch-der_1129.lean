import Mathlib

open Set Filter

variable {a b c L : ℝ} {f : ℝ → ℝ}

/-- If f is continuous on (a,b), differentiable on (a,b) \ {c}, and the derivative has a limit L
    as x → c (within (a,b) \ {c}), then f is differentiable at c and f'(c) = L. -/
theorem deriv_limit_implies_differentiable_at
  (hc : a < c) (hc' : c < b)
  (hcont : ContinuousOn f (Ioo a b))
  (hdiff : ∀ x ∈ Ioo a b, x ≠ c → DifferentiableAt ℝ f x)
  (hlim : Tendsto (fun x => deriv f x) (nhdsWithin c ((Ioo a b) \ {c})) (nhds L)) :
  DifferentiableAt ℝ f c ∧ deriv f c = L := by sorry
