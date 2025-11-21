import Mathlib

/-!
Let X be a path connected topological space that admits a countable basis of
simply connected open sets. Then the fundamental group of X is countable.
We state the result (no proof).
-/-

theorem countable_fundamental_group_of_countable_simply_connected_basis
  {X : Type _} [TopologicalSpace X] [PathConnectedSpace X]
  (h : ∃ (s : ℕ → Set X), (∀ n, IsOpen (s n)) ∧ (∀ n, IsSimplyConnected (s n)) ∧ IsTopologicalBasis (range s)) :
  ∀ x : X, Countable (FundamentalGroup X x) := by sorry
