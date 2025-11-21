import Mathlib

/-- For topological spaces X and Y and sets A ⊆ X, B ⊆ Y, the interior of the product equals the product of interiors. -/
theorem interior_prod_eq_prod_interior {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (A : Set X) (B : Set Y) : interior (A ×ˢ B) = (interior A) ×ˢ (interior B) := by sorry

/-- For topological spaces X and Y and sets A ⊆ X, B ⊆ Y, the closure of the product equals the product of closures. -/
theorem closure_prod_eq_prod_closure {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (A : Set X) (B : Set Y) : closure (A ×ˢ B) = (closure A) ×ˢ (closure B) := by sorry
