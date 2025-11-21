import Mathlib

variable {F : Type*} [Field F]

/-- The unipotent upper-triangular 2×2 matrix depending on t : F. -/
def e (t : F) : Matrix (Fin 2) (Fin 2) F := fun i j =>
  if i = 0 ∧ j = 0 then (1 : F)
  else if i = 0 ∧ j = 1 then t
  else if i = 1 ∧ j = 0 then (0 : F)
  else (1 : F)

/-- For all s, t in F, e(s) · e(t) = e(s + t). -/
theorem e_mul (s t : F) : e s ⬝ e t = e (s + t) := by sorry
