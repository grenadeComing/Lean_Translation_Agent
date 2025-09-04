import Mathlib

/-- Let F be a field, n a natural number, and G a subgroup of the units of n×n matrices over F.
    Define H = {A ∈ G | det A = ±1}. The following gives the declaration that H is a subgroup.
    The proof is omitted (``sorry''). -/

def H (F : Type _) [Field F] (n : ℕ) (G : Subgroup (Units (Matrix (Fin n) (Fin n) F))) :
  Set (Units (Matrix (Fin n) (Fin n) F)) :=
  {A | A ∈ G ∧ (Matrix.det A.val = (1 : F) ∨ Matrix.det A.val = -1)}

theorem H_is_subgroup (F : Type _) [Field F] (n : ℕ)
  (G : Subgroup (Units (Matrix (Fin n) (Fin n) F))) :
  Subgroup (Units (Matrix (Fin n) (Fin n) F)) := by
  sorry
