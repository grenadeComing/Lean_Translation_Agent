import Mathlib

/-- Assuming the alternating group A5 is simple, S5 (the permutation group on 5 letters)
    is not solvable. -/
theorem s5_not_solvable_of_a5_simple (h : IsSimpleGroup (alternatingGroup (Fin 5))) :
  ¬ IsSolvable (Equiv.Perm (Fin 5)) := by sorry
