import Mathlib

variable {X : Type _} [TopologicalSpace X]

/-- If A : ℕ → Set X is a sequence of connected sets with consecutive intersections nonempty,
then the union ⋃ n, A n is connected. -/
theorem isConnected_iUnion_of_connected_seq {A : ℕ → Set X}
  (h_conn : ∀ n, IsConnected (A n))
  (h_ne : ∀ n, (A n ∩ A (n+1)).Nonempty) :
  IsConnected (⋃ n, A n) := by sorry
