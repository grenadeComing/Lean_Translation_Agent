import Mathlib

variable {X : Type _} [TopologicalSpace X]
variable (A : ℕ → Set X)

theorem Munkres_exercise_23_2 (h_conn : ∀ n, IsConnected (A n)) (h_nz : ∀ n, ∃ x, x ∈ A n ∧ x ∈ A (n+1)) :
  IsConnected (⋃ n, A n) := by sorry
