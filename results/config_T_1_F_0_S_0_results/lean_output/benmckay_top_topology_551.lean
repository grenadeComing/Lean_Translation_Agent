import Mathlib
open Set

variable {X : Type _} [TopologicalSpace X]

/--
The asserted lemma below is not true in general. Counterexample:
Take X = ℝ, A = {1 / n | n ∈ ℕ, n ≥ 1} and U = {x | x > 0} (an open set).
Then A ⊆ U, so A ∩ U = A and closure (A ∩ U) contains 0, while closure A ∩ U = A does not contain 0.
Hence closure (A ∩ U) ⊆ closure A ∩ U fails.

We nevertheless state the (false) lemma exactly as requested below.
-/
lemma closure_inter_open_subset (A U : Set X) (hU : IsOpen U) : closure (A ∩ U) ⊆ closure A ∩ U := by sorry
