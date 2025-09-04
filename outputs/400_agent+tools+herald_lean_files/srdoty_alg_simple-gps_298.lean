import Mathlib

theorem s5_not_solvable (
  h : IsSimpleGroup (MonoidHom.ker (Equiv.Perm.sign : Equiv.Perm (Fin 5) →* ℤˣ) : Type _)) :
  ¬ IsSolvable (Equiv.Perm (Fin 5)) := by sorry
