import Mathlib

open Set

variable {X : Type*} [TopologicalSpace X] [CompactSpace X] [T2Space X]

/-- Let X be a compact Hausdorff space. Let A be a collection of closed connected subsets of X
    that is simply ordered by proper inclusion. Then Y = ⋂_{A ∈ A} A is connected. -/
theorem Munkres_exercise_26_11 {A : Set (Set X)}
  (h_closed : ∀ S ∈ A, IsClosed (S : Set X))
  (h_conn : ∀ S ∈ A, IsConnected (S : Set X))
  (h_total : ∀ S T, S ∈ A → T ∈ A → S ⊂ T ∨ T ⊂ S) :
  IsConnected (⋂ S ∈ A, S) := by sorry
