import Mathlib

open Set

theorem jirilebl_ra_ch_several_vars_ders_2586 {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
  {K : Set E} {f : E → ℝ} {x0 : E}
  (hK : IsCompact K) (hcont : ContinuousOn f K) (hdiff : DifferentiableOn ℝ f (interior K))
  (hx0 : x0 ∈ interior K) (hmax : ∀ x ∈ K, f x ≤ f x0) :
  fderiv ℝ f x0 = 0 := by sorry
