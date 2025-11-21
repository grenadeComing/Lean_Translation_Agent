import Mathlib

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

variable (A : Set X) (B : Set Y)

theorem interior_prod_eq : Set.interior (A ×ˢ B) = Set.interior A ×ˢ Set.interior B := by sorry

theorem closure_prod_eq : Set.closure (A ×ˢ B) = Set.closure A ×ˢ Set.closure B := by sorry
