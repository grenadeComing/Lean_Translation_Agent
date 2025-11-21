import Mathlib

variable {X : Type*} [MetricSpace X] [CompleteSpace X]

/-- Baire category theorem for complete metric spaces:
    If {U n} is a sequence of open dense subsets of a complete metric space X,
    then their intersection is dense. -/
theorem baire_category_complete_metric {U : ℕ → Set X} (h_open : ∀ n, IsOpen (U n))
  (h_dense : ∀ n, Dense (U n)) : Dense (⋂ n, U n) := by sorry