import Mathlib

variable {X : Type*} [MetricSpace X] [CompleteSpace X]

theorem baire_category_theorem_countable_intersection_open_dense (U : ℕ → Set X)
  (hU : ∀ n, IsOpen (U n) ∧ Dense (U n)) : Dense (⋂ n, U n) := by sorry