import Mathlib

open Set Topology

variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] (A : Set X) (B : Set Y)

theorem interior_prod_eq : interior (A ×ˢ B) = (interior A) ×ˢ (interior B) := by
  sorry

theorem closure_prod_eq : closure (A ×ˢ B) = (closure A) ×ˢ (closure B) := by
  sorry
