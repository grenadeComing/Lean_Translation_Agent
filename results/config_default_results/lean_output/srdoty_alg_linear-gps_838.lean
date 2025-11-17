import Mathlib

def E {F : Type*} [Field F] (t : F) : Matrix (Fin 2) (Fin 2) F := ![![1, t], ![0, 1]]

theorem E_inv_eq_E_neg_t {F : Type*} [Field F] (t : F) : (E (F:=F) t)⁻¹ = E (F:=F) (-t) := by
  sorry
