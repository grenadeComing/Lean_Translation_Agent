import Mathlib

open Set

theorem baire_category_in_complete_metric_space {X : Type*} [MetricSpace X] [CompleteSpace X]
  {U : ℕ → Set X} (hU_open : ∀ n, IsOpen (U n)) (hU_dense : ∀ n, Dense (U n)) :
  Dense (⋂ n, U n) := by sorry
