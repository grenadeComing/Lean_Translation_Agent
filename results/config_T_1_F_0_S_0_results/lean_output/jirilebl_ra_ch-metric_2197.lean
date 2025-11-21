import Mathlib

/-- Let (X,d) be a complete metric space. Let (U n)_{n : ℕ} be a sequence of open dense sets.
    Then ⋂ n, U n is dense. -/
theorem dense_Inter_of_open_dense_seq {X : Type*} [MetricSpace X] [CompleteSpace X]
  (U : ℕ → Set X) (h_open : ∀ n, IsOpen (U n)) (h_dense : ∀ n, Dense (U n)) :
  Dense (⋂ n, U n) := by sorry
