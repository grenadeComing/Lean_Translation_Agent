import Mathlib
open Finset

/-- For $x$ an element in $G$ show that $x$ and $x^{-1}$ have the same order. -/
theorem same_order_inv {G : Type*} [Group G] (x : G) : orderOf x = orderOf x⁻¹ := by sorry
