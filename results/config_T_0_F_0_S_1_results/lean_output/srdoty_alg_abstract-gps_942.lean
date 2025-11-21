import Mathlib

variable {F : Type*} [Field F]
variable {n : Type*} [Fintype n] [DecidableEq n]

open Matrix

variable (G : Set (Matrix n n F)ˣ) (hG : IsSubgroup G)

def H : Set (Matrix n n F)ˣ := { A | A ∈ G ∧ ((A : Matrix n n F).det = 1 ∨ (A : Matrix n n F).det = -1) }

theorem H_is_subgroup : IsSubgroup (H G) := by sorry