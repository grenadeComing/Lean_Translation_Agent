import Mathlib

open Complex

theorem exists_open_neighborhood_of_local_injective_of_deriv_ne_zero
  {U : Set Complex} (hU : IsOpen U) {f : Complex → Complex} {p : Complex}
  (hf : DifferentiableOn ℂ f U) (hp : p ∈ U) (h : deriv f p ≠ 0) :
  ∃ V : Set Complex, p ∈ V ∧ IsOpen V ∧ V ⊆ U ∧ IsOpen (f '' V) ∧ Function.Injective (fun x => f x) :=
by sorry
