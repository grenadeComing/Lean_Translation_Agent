import Mathlib

/--
Assuming the two classical Galois facts:
  * A5IsSimple : the alternating group A5 is simple,
  * GeneralQuinticGaloisGroupIsS5 : the Galois group of the general quintic is S5,
we conclude that the general quintic is not solvable by radicals.

This file records the statement only (no proof).  The final theorem is stated
as an implication from the two assumed facts to the negation of the
proposition `GeneralQuinticSolvableByRadicals`.
-/

axiom GeneralQuinticSolvableByRadicals : Prop

/-- If A5 is simple and the Galois group of the general quintic is S5,
    then the general quintic is not solvable by radicals. -/
theorem general_quintic_not_solvable_by_radicals
  (A5IsSimple : Prop)
  (GeneralQuinticGaloisGroupIsS5 : Prop) :
  (A5IsSimple ∧ GeneralQuinticGaloisGroupIsS5) → ¬ GeneralQuinticSolvableByRadicals := by sorry