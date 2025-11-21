import Mathlib

/-- Assuming that A5 (the alternating group on 5 letters) is simple, show that S5 (the
symmetric group on 5 letters) is not solvable. We represent S5 as `Equiv.Perm (Fin 5)`, and
A5 as the kernel of the sign homomorphism `Equiv.Perm.sign`. -/
lemma not_solvable_S5 (h : IsSimpleGroup (MonoidHom.ker (Equiv.Perm.sign : Equiv.Perm (Fin 5) →* ℤˣ))) :
  ¬IsSolvable (Equiv.Perm (Fin 5)) := by sorry
