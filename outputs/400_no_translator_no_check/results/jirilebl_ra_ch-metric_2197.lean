import Mathlib

theorem baire_category_theorem_metric {X : Type*} [MetricSpace X] [CompleteSpace X] {U : ℕ → Set X}
  (h_open : ∀ n, IsOpen (U n)) (h_dense : ∀ n, Dense (U n)) : Dense (⋂ n, U n) := by sorry
