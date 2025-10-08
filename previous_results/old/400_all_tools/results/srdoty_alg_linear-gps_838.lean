import Mathlib

open Matrix

/-- Define the elementary shear matrix E(t) = [[1, t], [0, 1]] over a field. -/
def E {F : Type*} [Field F] (t : F) : Matrix (Fin 2) (Fin 2) F :=
  fun i j => if i = 0 then if j = 0 then (1 : F) else t else if j = 0 then 0 else (1 : F)

/-- For the 2x2 shear matrix E(t) we have E(t) * E(-t) = I and E(-t) * E(t) = I. -/
theorem E_mul_Eneg_eq_one {F : Type*} [Field F] (t : F) :
  E t * E (-t) = 1 ∧ E (-t) * E t = 1 := by sorry
