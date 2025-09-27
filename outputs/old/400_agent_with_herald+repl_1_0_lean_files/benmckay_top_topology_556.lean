import Mathlib

open Set

variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]

theorem interior_prod (A : Set X) (B : Set Y) : interior (A ×ˢ B) = (interior A) ×ˢ (interior B) := by sorry

theorem closure_prod (A : Set X) (B : Set Y) : (closure A) ×ˢ (closure B) = closure (A ×ˢ B) := by sorry
