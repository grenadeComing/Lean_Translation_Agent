import Mathlib

variable {R : Type _} [CommRing R] (I J : Ideal R)

theorem ideal_mul_eq_inf_of_add_eq_top (h : I + J = ⊤) : I * J = I ⊓ J := by sorry
