import Mathlib

variable {X : Type _} [MetricSpace X] [CompleteSpace X]

/-- Baire category theorem for complete metric spaces: a countable intersection of open dense sets is dense. -/
theorem baire_category_metric (U : ℕ → Set X) (hU : ∀ n, IsOpen (U n) ∧ Dense (U n)) :
  Dense (⋂ n, U n) := by sorry
