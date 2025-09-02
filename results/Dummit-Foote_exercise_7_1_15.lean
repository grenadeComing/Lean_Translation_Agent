import Mathlib

/-- A ring R is called a Boolean ring if every element is idempotent: a * a = a. -/
def BooleanRing (R : Type _) [Ring R] : Prop := ∀ a : R, a * a = a

/-- Exercise: Every Boolean ring is commutative. -/
theorem boolean_ring_comm {R : Type _} [Ring R] (h : BooleanRing R) : ∀ a b : R, a * b = b * a := by sorry
