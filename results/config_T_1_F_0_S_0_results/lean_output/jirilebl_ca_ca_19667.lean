import Mathlib

/-- Let U ⊂ ℂ be open and f : U → ℂ be holomorphic. If |f| attains a local maximum at z0 ∈ U,
    then f is constant in a neighborhood of z0. -/
theorem constant_on_ball_of_local_max_norm {U : Set ℂ} {z₀ : ℂ} {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f U) (hU : IsOpen U) (hz₀ : z₀ ∈ U)
  (h : IsLocalMax (fun z => norm (f z)) z₀) :
  ∃ r : ℝ, 0 < r ∧ ∀ w : ℂ, w ∈ ball z₀ r → f w = f z₀ := by sorry