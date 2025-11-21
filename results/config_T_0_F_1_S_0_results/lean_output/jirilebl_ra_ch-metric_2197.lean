import Mathlib

/--
Let (X,d) be a complete metric space. Let {U_n}_{n=1}^\infty be a sequence of open dense sets.
Show that ⋂_{n=1}^\infty U_n is dense.

This is the Baire category theorem for complete metric spaces (statement only).
-/
theorem baire_category_metric_countable_intersection_dense {X : Type*} [MetricSpace X] [CompleteSpace X]
  (U : ℕ → Set X)
  (h_open : ∀ n, IsOpen (U n))
  (h_dense : ∀ n, Dense (U n)) :
  Dense (⋂ n, U n) := by sorry
