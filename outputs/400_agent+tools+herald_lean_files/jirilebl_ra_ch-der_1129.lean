import Mathlib

open Filter Set

theorem differentiable_at_of_deriv_tendsto {a b c L : ℝ} (hab : a < b) (hc : c ∈ Ioo a b) (f : ℝ → ℝ)
  (hcont : ContinuousOn f (Ioo a b)) (hdiff : ∀ x ∈ (Ioo a b \ {c}), DifferentiableAt ℝ f x)
  (hlim : Filter.Tendsto (fun x => deriv f x) (nhdsWithin c (Ioo a b \ {c})) (nhds L)) :
  DifferentiableAt ℝ f c ∧ deriv f c = L := by sorry
