import Mathlib

open Matrix

variable {F : Type*} [Field F]

def E (t : F) : Matrix (Fin 2) (Fin 2) F := fun i j =>
  if i = 0 then if j = 0 then (1 : F) else t else if j = 0 then (0 : F) else (1 : F)

theorem E_mul (s t : F) : E s * E t = E (s + t) := by sorry
