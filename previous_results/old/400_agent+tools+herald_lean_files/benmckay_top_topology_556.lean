import Mathlib
open Set

/-- Let X and Y be topological spaces. Prove that (A × B)^∘ = A^∘ × B^∘ and that closure A × closure B = closure (A × B). -/
theorem benmckay_top_topology_556 {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (A : Set X) (B : Set Y) :
  interior (A ×ˢ B) = interior A ×ˢ interior B ∧
  closure (A ×ˢ B) = closure A ×ˢ closure B :=
by sorry
