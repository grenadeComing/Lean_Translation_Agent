import Mathlib

open Set

theorem jirilebl_ca_ca_5367 (U : Set Complex) (p : Complex) (f : Complex → Complex)
  (hU : IsOpen U) (hp : p ∈ U) (hd : DifferentiableOn Complex f U)
  (f' : Complex) (hderiv : HasDerivAt f f' p) (hne : f' ≠ 0) :
  ∃ V : Set Complex, IsOpen V ∧ p ∈ V ∧ V ⊆ U ∧ Set.InjOn f V := by sorry
