import Mathlib

open Complex Set

theorem jirilebl_ca_ca_9443 {U : Set Complex} {f : Complex → Complex}
  (hU : IsOpen U) (hdiff : DifferentiableOn Complex f U)
  (hinj : ∀ z w, z ∈ U → w ∈ U → f z = f w → z = w) :
  ∀ z, z ∈ U → deriv f z ≠ 0 := by sorry
