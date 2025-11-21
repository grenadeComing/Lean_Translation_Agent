import Mathlib

variable {F : Type _} [Field F]

/-- The elementary matrix E(t) = [[1, t], [0, 1]] over a field F. -/
def E (t : F) : Matrix (Fin 2) (Fin 2) F :=
  fun i j => if i = 0 then if j = 0 then (1 : F) else t else if j = 0 then 0 else 1

theorem E_inv (t : F) : (E t)⁻¹ = E (-t) := by sorry
