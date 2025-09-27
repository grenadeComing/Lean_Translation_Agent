import Mathlib

open Set Metric

theorem holomorphic_const_of_local_max_modulus {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hf : IsHolomorphicOn f U)
  {z0 : ℂ} (hz0 : z0 ∈ U)
  (hmax : ∃ r > 0, ball z0 r ⊆ U ∧ ∀ z ∈ ball z0 r, ‖f z‖ ≤ ‖f z0‖) :
  ∃ r > 0, ball z0 r ⊆ U ∧ ∀ z ∈ ball z0 r, f z = f z0 := by sorry
