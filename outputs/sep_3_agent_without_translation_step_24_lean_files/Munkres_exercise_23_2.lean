import Mathlib

/-!
Exercise: Let {A_n} be a sequence of connected subspaces of X, such that A_n ∩ A_{n+1} ≠ ∅ for all n. Show that ⋃ A_n is connected.
-/

theorem Munkres_exercise_23_2 {X : Type _} [TopologicalSpace X] (A : ℕ → Set X)
  (h_conn : ∀ n, IsConnected (A n))
  (h_nonempty : ∀ n, (A n ∩ A (n+1)).Nonempty) :
  IsConnected (⋃ n, A n) := by sorry
