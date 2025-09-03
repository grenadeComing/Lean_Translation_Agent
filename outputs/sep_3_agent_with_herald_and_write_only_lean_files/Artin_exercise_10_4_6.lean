import Mathlib


/-- Let I, J be ideals in a ring R. Prove that the residue of any element of I ∩ J in R / (I * J) is nilpotent. -/
theorem nilpotent_quotient_ext (R : Type*) [CommRing R] (I J : Ideal R) (x : I ⊓ J) : IsNilpotent ((Ideal.Quotient.mk (I * J)) x) := by sorry
