import Mathlib

open Complex

theorem maximum_modulus_principle_local {U : Set ℂ} {f : ℂ → ℂ} {z0 : ℂ}
  (hU : IsOpen U) (hf : IsHolomorphicOn f U) (hz0 : z0 ∈ U)
  (hmax : ∃ r : ℝ, 0 < r ∧ ∀ z ∈ U ∩ ball z0 r, Complex.abs (f z) ≤ Complex.abs (f z0)) :
  ∃ r : ℝ, 0 < r ∧ ∀ z ∈ U ∩ ball z0 r, f z = f z0 := by sorry
