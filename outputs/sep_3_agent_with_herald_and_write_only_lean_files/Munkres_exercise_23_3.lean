import Mathlib

/-- Let {A_α} be a collection of connected subspaces of X; let A be a connected subset of X.
    If A ∩ A_α ≠ ∅ for all α, then A ∪ (⋃ α, A_α) is connected. -/
theorem connected_union_of_connected_with_common_point {X : Type*} [TopologicalSpace X]
  {ι : Type*} {A : Set X} {Aα : ι → Set X}
  (hA : IsConnected A)
  (hAα : ∀ i, IsConnected (Aα i))
  (hnonempty : ∀ i, (A ∩ Aα i).Nonempty) :
  IsConnected (A ∪ ⋃ i, Aα i) := by sorry
