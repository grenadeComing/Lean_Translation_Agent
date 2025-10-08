import Mathlib

/-- Assuming A5 is simple, S5 is not solvable. -/
theorem S5_not_solvable (h : IsSimpleGroup (alternatingGroup (Fin 5))) : ¬ IsSolvable (Equiv.Perm (Fin 5)) := by sorry
