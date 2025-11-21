import Mathlib

/-- Interior of a product equals the product of interiors. -/
theorem interior_prod_eq_prod_interior {α β : Type*} [TopologicalSpace α] [TopologicalSpace β]
  (A : Set α) (B : Set β) : interior (A ×ˢ B) = (interior A) ×ˢ (interior B) := by sorry

/-- Closure of a product equals the product of closures. -/
theorem closure_prod_eq_prod_closure {α β : Type*} [TopologicalSpace α] [TopologicalSpace β]
  (A : Set α) (B : Set β) : closure (A ×ˢ B) = (closure A) ×ˢ (closure B) := by sorry
