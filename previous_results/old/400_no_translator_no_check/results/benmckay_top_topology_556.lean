import Mathlib

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] {A : Set X} {B : Set Y}

/-- The interior of a product is the product of the interiors. -/
theorem interior_prod : interior (A ×ˢ B) = interior A ×ˢ interior B := by
  sorry

/-- The closure of a product is the product of the closures. -/
theorem closure_prod : closure A ×ˢ closure B = closure (A ×ˢ B) := by
  sorry
