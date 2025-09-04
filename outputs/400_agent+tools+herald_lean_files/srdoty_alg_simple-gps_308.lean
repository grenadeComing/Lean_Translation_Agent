import Mathlib

/--
Statement (following Galois): A5 is simple and the Galois group of the general
quintic is S5. From these facts one concludes the general quintic is not solvable by radicals.
This file only records the formal statement; proof omitted ("by sorry").
-/

axiom A5_simple : Prop
axiom galois_group_general_quintic_is_S5 : Prop
axiom general_quintic_solvable_by_radicals : Prop

/-- Main theorem: assuming A5 is simple and the Galois group of the general quintic is S5,
    the general quintic is not solvable by radicals. -/
theorem general_quintic_not_solvable_by_radicals
  (hA5 : A5_simple)
  (hG : galois_group_general_quintic_is_S5) :
  ¬ general_quintic_solvable_by_radicals := by sorry
