import Mathlib

/-- The upper triangular 2×2 matrix E(t) = [[1, t], [0, 1]] over a field F. -/
def E {F : Type*} [Field F] (t : F) : Matrix (Fin 2) (Fin 2) F :=
  fun i j =>
    if i = 0 then
      if j = 0 then (1 : F) else t
    else
      if j = 0 then (0 : F) else (1 : F)

/-- For a field F and t in F, the inverse of E(t) is E(-t). -/
theorem E_inv_eq_E_neg (F : Type*) [Field F] (t : F) :
  (E (t) : Matrix (Fin 2) (Fin 2) F)⁻¹ = E (-t) := by sorry
