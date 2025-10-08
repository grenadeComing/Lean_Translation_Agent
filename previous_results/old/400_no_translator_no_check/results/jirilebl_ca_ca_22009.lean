import Mathlib

/-!
Open mapping theorem for holomorphic functions (nonconstant).
We state a version using DifferentiableOn over ℂ on an open set U.
-/

theorem holomorphic_open_map {U : Set Complex} (hU : IsOpen U) {f : Complex → Complex}
  (hf : DifferentiableOn ℂ f U) (h_nonconst : ∃ z1 z2, z1 ∈ U ∧ z2 ∈ U ∧ f z1 ≠ f z2) :
  IsOpenMap (fun x : ↥U => f (x : Complex)) := by sorry
