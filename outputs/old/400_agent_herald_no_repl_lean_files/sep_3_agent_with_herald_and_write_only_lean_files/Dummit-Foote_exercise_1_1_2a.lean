import Mathlib

/-!
Dummit and Foote, exercise 1.1.2(a).
Define an operation ⋆ on ℤ by a ⋆ b = a - b and state that it is not commutative.
-/

def star (a b : Int) : Int := a - b

notation:65 a " ⋆ " b => star a b

theorem star_not_comm : ∃ a b : Int, (a ⋆ b) ≠ (b ⋆ a) := by sorry
