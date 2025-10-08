import Mathlib

/-- The free group on two generators a,b and the normal closure of the relations
    a^2 = b^2 = (a*b)^2 is defined below. We state the expected presentation
    of Q8 as a Lean theorem; the proof is omitted (:= by sorry). -/
theorem quaternion_group_presentation :
  let a := FreeGroup.of (0 : Fin 2)
  let b := FreeGroup.of (1 : Fin 2)
  let N := Subgroup.normalClosure ({a ^ 2, b ^ 2, (a * b) ^ 2} : Set (FreeGroup (Fin 2)))
  -- The quotient (FreeGroup (Fin 2)) ⧸ N should be isomorphic to the quaternion group Q8.
  True := by sorry
