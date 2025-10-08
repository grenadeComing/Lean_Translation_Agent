import Mathlib

/-- Define a binary operation `star` on the integers by `a ★ b = a - b`. -/
def star (a b : Int) : Int := a - b

/-- The operation `star` is not commutative. -/
theorem star_not_commutative : ∃ a b : Int, star a b ≠ star b a := by sorry
