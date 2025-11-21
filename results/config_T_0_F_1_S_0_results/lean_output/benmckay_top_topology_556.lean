import Mathlib

open Set

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

/-- The interior of a product is the product of the interiors. -/
theorem interior_prod (A : Set X) (B : Set Y) :
  interior (A ×ˢ B) = (interior A) ×ˢ (interior B) := by sorry

/-- The closure of a product is the product of the closures. -/
theorem closure_prod (A : Set X) (B : Set Y) :
  closure (A ×ˢ B) = (closure A) ×ˢ (closure B) := by sorry
