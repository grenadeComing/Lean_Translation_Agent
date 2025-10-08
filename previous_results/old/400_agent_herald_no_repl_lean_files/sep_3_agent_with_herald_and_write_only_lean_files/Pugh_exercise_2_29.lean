import Mathlib

/-!
Pugh, Exercise 2.29.

Let 𝒯 be the collection of open subsets of a metric space M, and 𝒦 the collection of closed subsets.
There is a bijection between 𝒯 and 𝒦 given by taking complements.
-/

noncomputable def opens_closed_equiv (M : Type*) [MetricSpace M] :
  { U : Set M // IsOpen U } ≃ { A : Set M // IsClosed A } := by
  -- send an open set to its complement (which is closed); inverse is complement again
  sorry
