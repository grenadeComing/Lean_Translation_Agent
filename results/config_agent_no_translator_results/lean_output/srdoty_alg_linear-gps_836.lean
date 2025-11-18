import Mathlib

universe u

variable (F : Type u) [Field F]

def E : F → Matrix (Fin 2) (Fin 2) F := fun t => ![![((1 : F)), t], ![((0 : F)), (1 : F)]]

lemma E_mul (s t : F) : E s * E t = E (s + t) := by
  sorry
