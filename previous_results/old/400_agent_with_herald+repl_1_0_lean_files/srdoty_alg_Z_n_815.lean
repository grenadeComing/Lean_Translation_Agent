import Mathlib

/-- Define a relation `approx` on the reals by `a approx b` iff `a - b` is an integer. -/
def approx (a b : Real) : Prop := ∃ z : Int, a - b = (z : Real)

theorem approx_refl : ∀ a : Real, approx a a := by sorry

theorem approx_symm : ∀ a b : Real, approx a b → approx b a := by sorry

theorem approx_trans : ∀ a b c : Real, approx a b → approx b c → approx a c := by sorry
