import Mathlib

/-!
Baire category theorem for complete metric spaces (statement only).
We state: If X is a complete metric space and (U n) is a sequence of open dense sets,
then ⋂ n, U n is dense.
-/

variable {X : Type*} [MetricSpace X] [CompleteSpace X]

theorem baire_category_metric (U : ℕ → Set X) (h : ∀ n, IsOpen (U n) ∧ Dense (U n)) :
  Dense (⋂ n, U n) := by sorry
