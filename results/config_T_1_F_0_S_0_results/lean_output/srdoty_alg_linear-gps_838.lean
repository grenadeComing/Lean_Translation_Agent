import Mathlib

open Matrix

/-- The elementary unipotent 2x2 matrix E(t) = [[1, t], [0, 1]] over a field F. -/
def E {F : Type*} [Field F] (t : F) : Matrix (Fin 2) (Fin 2) F :=
  fun i j => if i = 0 then if j = 0 then (1 : F) else t else if j = 0 then (0 : F) else (1 : F)

/-- For every t, E(t)^{-1} = E(-t). We express this by giving both left and right inverse equalities. -/
lemma e_inv_eq_e_neg {F : Type*} [Field F] (t : F) :
  (E (t) : Matrix (Fin 2) (Fin 2) F) * E (-t) = 1 ∧ E (-t) * E t = 1 := by sorry