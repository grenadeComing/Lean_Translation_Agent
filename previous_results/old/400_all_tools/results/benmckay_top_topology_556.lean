import Mathlib

/-!
# Product of interior and closure

Let X and Y be topological spaces and A ⊆ X, B ⊆ Y. We state the facts

1) interior (A × B) = interior A × interior B
2) closure A × closure B = closure (A × B)

Each theorem is given as a statement ending with `:= by sorry` (no proof here).
-/

variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
variable (A : Set X) (B : Set Y)

theorem interior_prod : interior (Set.prod A B) = Set.prod (interior A) (interior B) := by sorry

theorem closure_prod : Set.prod (closure A) (closure B) = closure (Set.prod A B) := by sorry
