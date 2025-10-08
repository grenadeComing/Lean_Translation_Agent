import Mathlib

variable {F : Type _} [Field F]

def E (t : F) : Matrix (Fin 2) (Fin 2) F :=
  fun i j =>
    match i.val, j.val with
    | 0, 0 => 1
    | 0, 1 => t
    | 1, 0 => 0
    | 1, 1 => 1
    | _, _ => 0

theorem E_mul (s t : F) : E s * E t = E (s + t) := by sorry
