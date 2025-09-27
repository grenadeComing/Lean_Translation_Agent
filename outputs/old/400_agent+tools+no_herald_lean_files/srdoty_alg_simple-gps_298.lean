import Mathlib

open Equiv

/-- Assuming A5 (the alternating group on 5 letters) is simple, S5 is not solvable. -/
theorem s5_not_solvable (h : IsSimpleGroup (alternatingGroup (Fin 5))) : ¬ IsSolvable (Equiv.Perm (Fin 5)) := by sorry
