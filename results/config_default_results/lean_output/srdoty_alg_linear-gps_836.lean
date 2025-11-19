import Mathlib

section
variable {F : Type*} [Field F]

/-- The elementary upper-triangular matrix E(t) = [[1, t], [0, 1]] over a field F. -/
 def E (t : F) : Matrix (Fin 2) (Fin 2) F := ![ ![1, t], ![0, 1] ]

/-- Show that E(s) * E(t) = E(s + t) for all s, t in F. -/
theorem E_mul_E_eq (s t : F) : E s * E t = E (s + t) := by
  sorry

end
