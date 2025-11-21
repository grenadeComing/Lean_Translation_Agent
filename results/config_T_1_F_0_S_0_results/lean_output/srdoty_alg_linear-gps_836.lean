import Mathlib

open Matrix

/-- The elementary unipotent 2x2 matrix depending on t : F. -/
def E {F : Type _} [Field F] (t : F) : Matrix (Fin 2) (Fin 2) F :=
  fun i j =>
    if i = 0 then
      if j = 0 then (1 : F) else t
    else
      if j = 0 then (0 : F) else (1 : F)

/-- For a field F and s, t in F, the matrices E(s) and E(t) multiply to E(s + t). -/
theorem e_mul_e {F : Type _} [Field F] (s t : F) : E (s) * E (t) = E (s + t) := by sorry