import Mathlib

theorem open_mapping_theorem {U : Set Complex} (hU : IsOpen U) {f : Complex → Complex}
  (hd : DifferentiableOn Complex f U) (hnc : ∃ z1 z2, z1 ∈ U ∧ z2 ∈ U ∧ f z1 ≠ f z2) :
  IsOpenMap (fun z : U => f z) := by sorry
