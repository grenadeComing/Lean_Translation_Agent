import Mathlib

variable {R : Type*} [CommRing R]

/-- If I + J = ⊤ then I * J = I ⊓ J. -/
theorem ideal_mul_eq_inf_of_add_eq_top (I J : Ideal R) (h : I + J = ⊤) : I * J = I ⊓ J := by
  sorry
