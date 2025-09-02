import Mathlib

/-- Let {A_α} be a collection of connected subspaces of X; let A be a connected subset of X.
    Show that if A ∩ A_α ≠ ∅ for all α, then A ∪ (⋃_α A_α) is connected. -/
theorem Munkres_exercise_23_3 {X : Type*} [TopologicalSpace X] {ι : Type*} {A : Set X} {Aα : ι → Set X}
  (hA : IsConnected A) (hAα : ∀ i, IsConnected (Aα i)) (h : ∀ i, (A ∩ Aα i).Nonempty) :
  IsConnected (A ∪ ⋃ i, Aα i) := by sorry
