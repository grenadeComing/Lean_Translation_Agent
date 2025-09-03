import Mathlib

/-!
Exercise: Let X be a compact Hausdorff space. Let A be a collection of closed connected subsets of X
that is simply ordered by proper inclusion. Then Y = ⋂_{A ∈ A} A is connected.
-/

open Set

theorem Munkres_exercise_26_11 {X : Type*} [TopologicalSpace X] [CompactSpace X] [T2Space X]
  (A : Set (Set X))
  (h_nonempty : A.Nonempty)
  (h_closed : ∀ S ∈ A, IsClosed (S : Set X))
  (h_connected : ∀ S ∈ A, IsPreconnected (S : Set X))
  (h_total_order : ∀ S T ∈ A, S ⊂ T ∨ T ⊂ S) :
  IsPreconnected (⋂₀ A) := by sorry
