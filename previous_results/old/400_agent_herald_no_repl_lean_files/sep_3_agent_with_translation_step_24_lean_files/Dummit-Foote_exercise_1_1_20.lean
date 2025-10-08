import Mathlib

/-- For x an element of a group G, x and x⁻¹ have the same order. -/
theorem order_of_inv {G : Type _} [Group G] (x : G) : orderOf x = orderOf x⁻¹ := by sorry
