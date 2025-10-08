import Mathlib

open Set

theorem exists_open_neighborhood_where_holomorphic_map_is_injective
  (U : Set Complex) (p : Complex) (f : Complex → Complex)
  (hU : IsOpen U) (hp : p ∈ U) (hf : IsHolomorphicAt f p) (hder : deriv f p ≠ 0) :
  ∃ V : Set Complex, IsOpen V ∧ p ∈ V ∧ V ⊆ U ∧ ∀ x y, x ∈ V → y ∈ V → f x = f y → x = y := by sorry
