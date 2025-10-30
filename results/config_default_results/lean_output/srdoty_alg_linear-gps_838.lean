import Mathlib

/- Let F be a field and E(t) := [[1, t], [0, 1]] -/
variable {F : Type*} [Field F]

def E (t : F) : Matrix (Fin 2) (Fin 2) F := ![![1, t], ![0, 1]]

/-- Show that E(t)⁻¹ = E(-t) for all t in F -/
theorem E_inv_eq_E_neg_t (t : F) : (E t)⁻¹ = E (-t) := by
  -- placeholder
  sorry
