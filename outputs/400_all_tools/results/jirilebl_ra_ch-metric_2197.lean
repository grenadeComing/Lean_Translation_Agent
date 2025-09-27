import Mathlib

open scoped Topology
open Filter Set TopologicalSpace

/-- Let (X,d) be a complete metric space. Let {U_n}_{n=1}^infty be a sequence of open dense sets. Show that ⋂_{n=1}^∞ U_n is dense. -/
theorem baire_category_theorem_of_complete {X : Type*} [MetricSpace X] [CompleteSpace X] (U : ℕ → Set X)
    (hU : ∀ n, IsOpen (U n)) (hU' : ∀ n, Dense (U n)) : Dense (⋂ n, U n) := by sorry
