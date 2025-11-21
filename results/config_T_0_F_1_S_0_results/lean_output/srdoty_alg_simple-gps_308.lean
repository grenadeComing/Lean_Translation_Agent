import Mathlib

axiom IsSimpleA5 : Prop
axiom GalGeneralQuinticIsS5 : Prop
axiom RootsOfGeneralQuinticExpressibleByRadicals : Prop

theorem general_quintic_not_expressible_by_radicals
  (hA5 : IsSimpleA5)
  (hGal : GalGeneralQuinticIsS5) :
  ¬ RootsOfGeneralQuinticExpressibleByRadicals := by sorry
