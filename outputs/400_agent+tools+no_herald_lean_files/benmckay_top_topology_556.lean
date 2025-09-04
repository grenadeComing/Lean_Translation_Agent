import Mathlib

open Set

variable {α : Type _} {β : Type _} [TopologicalSpace α] [TopologicalSpace β]
variable (A : Set α) (B : Set β)

theorem interior_prod : interior (A ×ˢ B) = interior A ×ˢ interior B := by sorry

theorem closure_prod : closure (A ×ˢ B) = closure A ×ˢ closure B := by sorry
