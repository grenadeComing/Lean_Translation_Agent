import Mathlib

axiom A5_simple : Prop
axiom gal_general_quintic_is_S5 : Prop
axiom general_quintic_roots_expressible_by_radicals : Prop

theorem general_quintic_not_expressible_by_radicals
  (hA5 : A5_simple)
  (hGal : gal_general_quintic_is_S5)
  : ¬ general_quintic_roots_expressible_by_radicals := by sorry
