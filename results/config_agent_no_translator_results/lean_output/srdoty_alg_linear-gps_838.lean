import Mathlib

variable (F : Type) [Field F]

/-- E(t) is the 2x2 unipotent upper-triangular matrix [[1, t], [0, 1]] over the field F. -/
def E (t : F) : Matrix (Fin 2) (Fin 2) F := ![![1, t], ![0, 1]]

/-- The matrix E(t) has inverse E(-t). -/
theorem E_inverse_pair (t : F) : E t * E (-t) = (1 : Matrix (Fin 2) (Fin 2) F) ∧ E (-t) * E t = (1 : Matrix (Fin 2) (Fin 2) F) := by
  sorry
