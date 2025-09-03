import Mathlib

open Set

variable {X : Type _} [TopologicalSpace X] {ι : Type _}

/-- Munkres exercise 23.3:
Let {A_α} be a collection of connected subspaces of X; let A be a connected subset of X.
If A ∩ A_α ≠ ∅ for all α, then A ∪ (⋃ A_α) is connected. -/
theorem Munkres_exercise_23_3 (A : Set X) (Aα : ι → Set X)
  (hA : IsConnected A) (hAα : ∀ i, IsConnected (Aα i)) (hnon : ∀ i, (A ∩ Aα i).Nonempty) :
  IsConnected (A ∪ ⋃ i, Aα i) := by
  sorry
