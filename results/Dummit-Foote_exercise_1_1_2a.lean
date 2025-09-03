import Mathlib

def star (a b : Int) : Int := a - b

theorem star_not_commutative : ¬ (∀ a b : Int, star a b = star b a) := by sorry
