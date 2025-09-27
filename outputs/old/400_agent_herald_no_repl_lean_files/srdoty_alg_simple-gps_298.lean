import Mathlib

/-- Assuming that A₅ (the alternating group on 5 letters) is simple (a classical result of Galois),
show that S₅ (the full symmetric group on 5 letters) is not solvable. -/
theorem not_solvable_S5 : ¬IsSolvable (Equiv.Perm (Fin 5)) := by sorry
