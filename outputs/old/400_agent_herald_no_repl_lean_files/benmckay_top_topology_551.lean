import Mathlib

variable {X : Type _} [TopologicalSpace X]

/-!
Note on correctness:
The statement "closure (A ∩ U) ⊆ closure A ∩ U for open U" is false in general.
For a counterexample, take X = ℝ, A = ℚ (rationals), and U = (0,1).  Then A ∩ U is dense in [0,1],
so its closure contains the endpoints 0 and 1, which need not lie in U.  Thus
closure (A ∩ U) ⊄ U in general.

Below are two correct related statements:
  * closure (A ∩ U) ⊆ closure A ∩ closure U for any A, U ⊆ X;
  * if C is closed, then closure (A ∩ C) ⊆ closure A ∩ C.
-/

theorem closure_inter_subset_closure_inter_closure {A U : Set X} :
  Set.closure (A ∩ U) ⊆ Set.closure A ∩ Set.closure U := by
  sorry

theorem closure_inter_subset_closure_inter_of_closed {A C : Set X} (hC : IsClosed C) :
  Set.closure (A ∩ C) ⊆ Set.closure A ∩ C := by
  sorry
