import Mathlib

/-- Let f : (a,b) → ℝ be continuous on (a,b) and differentiable on (a,b) \ {c}. If
    lim_{x→c, x≠c} f'(x) = L, then f is differentiable at c and f'(c) = L. -/
theorem differentiable_at_of_tendsto_deriv {a b c L : ℝ} {f : ℝ → ℝ}
  (h : a < c ∧ c < b)
  (hf_cont : ContinuousOn f (Ioo a b))
  (hf_diff : DiffOn ℝ f (Ioo a b \ {c}))
  (hL : Tendsto (fun x => deriv f x) (𝓝[≠] c) (𝓝 L)) :
  DifferentiableAt ℝ f c ∧ deriv f c = L := by sorry