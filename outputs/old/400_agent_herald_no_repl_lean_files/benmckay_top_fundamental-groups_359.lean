import Mathlib

/-!
Let X be a path connected topological space that admits a countable basis
of simply connected open sets. Show that π_1(X) is countable.

This file states the theorem; the proof is omitted (``sorry'').
-/

variable {X : Type _} [TopologicalSpace X]

/-- If X is path connected and admits a countable basis of simply connected open sets,
then the fundamental group of X is countable. -/
theorem pi1_countable_of_countable_basis_simply_connected_open
  (B : ℕ → Set X)
  (h_open : ∀ n, IsOpen (B n))
  (h_simply_connected : ∀ n, IsSimplyConnected (B n))
  (h_basis : ∀ x (U : Set X), IsOpen U → x ∈ U → ∃ n, x ∈ B n ∧ B n ⊆ U)
  (h_path_connected : IsPathConnected X) :
  Countable (FundamentalGroup X) := by sorry
