import Mathlib

variable {F : Type*} [Field F]

def E (t : F) : Matrix (Fin 2) (Fin 2) F := fun i j =>
  if i = 0 then if j = 0 then 1 else t else if j = 0 then 0 else 1

theorem E_mul_inverse (t : F) : E t * E (-t) = 1 := by sorry
