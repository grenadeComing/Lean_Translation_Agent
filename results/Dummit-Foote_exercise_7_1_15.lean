import Mathlib

/-- A ring R is called Boolean if every element is idempotent: a^2 = a.
    Every Boolean ring is commutative: for all x y, x * y = y * x. -/
theorem boolean_ring_comm (R : Type*) [Ring R] (h : ∀ a : R, a * a = a) :
  ∀ x y : R, x * y = y * x := by sorry
