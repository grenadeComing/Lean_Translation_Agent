import Mathlib

/-- If the alternating group A5 (the kernel of the sign on S5) is simple then S5 is not solvable. -/
theorem S5_not_solvable_of_A5_simple
  (hA5 : IsSimpleGroup (MonoidHom.ker (Equiv.Perm.sign : Equiv.Perm (Fin 5) →* ℤˣ))) :
  ¬IsSolvable (Equiv.Perm (Fin 5)) := by sorry