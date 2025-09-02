import Mathlib

variable {X : Type*} [TopologicalSpace X]
variable {ι : Sort*} (A : Set X) (Aα : ι → Set X)

/-- Let {A_α} be a collection of connected subspaces of X; let A be a connected subset of X.
    Show that if A ∩ A_α ≠ ∅ for all α, then A ∪ (⋃ A_α) is connected. -/
theorem Munkres_exercise_23_3 (hA : IsConnected A) (hAα : ∀ i, IsConnected (Aα i))
  (h_non : ∀ i, (A ∩ Aα i).Nonempty) : IsConnected (A ∪ ⋃ i, Aα i) := by sorry
