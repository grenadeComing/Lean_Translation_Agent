import Mathlib
open Topology Filter unitInterval Set Function
open TopologicalSpace

/-- Let X be completely regular, let A and B be disjoint closed subsets of X. Show that if A is compact, there is a continuous function f \colon X \rightarrow [0, 1] such that f(A) = \{0\} and f(B) = \{1\}. -/
theorem exists_continuous_forall_eq_zero_of_closed_of_compact {X : Type*} [TopologicalSpace X]
    [CompletelyRegularSpace X] {A B : Set X} (hA : IsClosed A) (hB : IsClosed B) (hAB : Disjoint A B)
    (hA' : IsCompact A) :
    ∃ f : C(X, ℝ), ∀ x ∈ A, f x = 0 ∧ ∀ x ∈ B, f x = 1 := by sorry
