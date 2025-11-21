import Mathlib

/-- Assuming the alternating group A5 is simple, S5 (the full symmetric group on 5
    letters, Perm (Fin 5)) is not a solvable group. -/
theorem s5_not_solvable_of_a5_simple :
  IsSimpleGroup (alternatingGroup (Fin 5)) → ¬ IsSolvableGroup (Equiv.Perm (Fin 5)) := by sorry