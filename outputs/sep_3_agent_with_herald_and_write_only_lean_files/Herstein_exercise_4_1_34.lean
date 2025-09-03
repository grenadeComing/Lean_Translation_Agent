import Mathlib

/-- Let T be the group of 2×2 matrices over ZMod 2 with nonzero determinant (i.e. the units
    in the 2×2 matrix ring over Z/2Z). This group is isomorphic to the symmetric group S_3.
    Statement provided without proof. -/

def T : Type := Units (Matrix (Fin 2) (Fin 2) (ZMod 2))

theorem Herstein_exercise_4_1_34 : T ≃* Equiv.Perm (Fin 3) := by sorry
