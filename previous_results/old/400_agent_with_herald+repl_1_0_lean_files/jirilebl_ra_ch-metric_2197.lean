import Mathlib
open Set Filter
open Metric

/-- Let (X,d) be a complete metric space. Let {U_n}_{n=1}^\infty be a sequence of open dense sets. Show that \bigcap_{n=1}^\infty U_n is dense. -/
theorem dense_iInter_of_isOpen_dense_extracted {α : Type*} [PseudoMetricSpace α] [CompleteSpace α] {U : ℕ → Set α} :
  (∀ (n : ℕ), IsOpen (U n)) → (∀ (n : ℕ), Dense (U n)) → Dense (⋂ n, U n) := by sorry
