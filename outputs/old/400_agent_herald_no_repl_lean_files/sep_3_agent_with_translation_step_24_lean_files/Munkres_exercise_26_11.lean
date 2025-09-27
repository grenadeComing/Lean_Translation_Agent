import Mathlib

open Set

/-- Let X be a compact Hausdorff space. Let A be a collection of closed connected subsets of X that is simply ordered by proper inclusion. Then Y = ⋂_{A ∈ A} A is connected. -/
theorem Munkres_exercise_26_11 {X : Type _} [TopologicalSpace X] [CompactSpace X] [T2Space X]
  {A : Set (Set X)}
  (h_closed : ∀ s, s ∈ A → IsClosed (s : Set X))
  (h_conn : ∀ s, s ∈ A → IsConnected (s : Set X))
  (h_chain : ∀ s t, s ∈ A → t ∈ A → s ⊆ t ∨ t ⊆ s) :
  IsConnected (sInter A) := by sorry
