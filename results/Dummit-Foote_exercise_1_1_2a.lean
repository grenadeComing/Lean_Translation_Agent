import Mathlib

/-- Define the binary operation ⋆ on ℤ by a ⋆ b = a - b. -/
def star (a b : Int) : Int := a - b

/-- The operation ⋆ on ℤ is not commutative: there exist a,b with a ⋆ b ≠ b ⋆ a. -/
theorem star_not_commutative : ∃ a b : Int, star a b ≠ star b a := by
  sorry
