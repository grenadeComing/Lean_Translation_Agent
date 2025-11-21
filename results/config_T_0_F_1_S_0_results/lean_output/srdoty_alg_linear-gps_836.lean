import Mathlib

open Matrix

def E {F : Type _} [Field F] (t : F) : Matrix (Fin 2) (Fin 2) F :=
  fun i j => if i = 0 ∧ j = 0 then (1 : F)
             else if i = 0 ∧ j = 1 then t
             else if i = 1 ∧ j = 0 then (0 : F)
             else (1 : F)

theorem E_mul {F : Type _} [Field F] (s t : F) : E (s) * E (t) = E (s + t) := by sorry
