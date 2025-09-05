import Mathlib

open Matrix

variable {F : Type*} [Field F] {n : Nat}

/-- H consists of those units in G whose determinant is ±1. -/
def H (G : Subgroup (Units (Matrix (Fin n) (Fin n) F))) : Set (Units (Matrix (Fin n) (Fin n) F)) :=
  {A | A ∈ G ∧ (A.val.det = (1 : F) ∨ A.val.det = (-1 : F))}

/-- The identity lies in H and H is closed under a * b⁻¹ (the subgroup criterion). -/
theorem H_is_subgroup_of_G (G : Subgroup (Units (Matrix (Fin n) (Fin n) F))) :
  (1 : Units (Matrix (Fin n) (Fin n) F)) ∈ G →
  ((1 : Units (Matrix (Fin n) (Fin n) F)) ∈ H G) ∧
  ∀ a b, a ∈ H G → b ∈ H G → a * b⁻¹ ∈ H G := by sorry
