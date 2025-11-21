import Mathlib

lemma holomorphic_const_on_nhds_of_norm_local_max {U : Set ℂ} (hU : IsOpen U)
  {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U) {z0 : ℂ} (hz0 : z0 ∈ U)
  (h : ∃ r : ℝ, 0 < r ∧ Ball z0 r ⊆ U ∧ ∀ z, dist z z0 < r → norm (f z) ≤ norm (f z0)) :
  ∃ r : ℝ, 0 < r ∧ Ball z0 r ⊆ U ∧ ∀ z ∈ Ball z0 r, f z = f z0 := by sorry