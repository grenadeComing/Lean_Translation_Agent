import Mathlib

open Function

theorem jirilebl_ca_ca_9083 (U : Set ℂ) (hU : IsOpen U) (f : ℂ → ℂ)
  (hd : DifferentiableOn ℂ f U) (hinj : Injective f) :
  ∀ z : ℂ, z ∈ U → deriv f z ≠ 0 := by sorry
