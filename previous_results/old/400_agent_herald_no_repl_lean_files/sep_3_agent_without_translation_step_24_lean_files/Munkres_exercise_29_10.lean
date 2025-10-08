import Mathlib

/-!
Exercise (Munkres 29.10).  If X is a Hausdorff space that is locally compact at the
point x, then for each neighborhood U of x, there is a neighborhood V of x such that
closure V is compact and closure V ⊆ U.

We express "locally compact at x" by assuming the existence of some open neighborhood
of x with compact closure.
-/

theorem Munkres_exercise_29_10 {X : Type _} [TopologicalSpace X] [T2Space X] {x : X}
  (h_loc : ∃ W, IsOpen W ∧ x ∈ W ∧ IsCompact (closure W)) :
  ∀ U : Set X, IsOpen U → x ∈ U → ∃ V : Set X, IsOpen V ∧ x ∈ V ∧ IsCompact (closure V) ∧ closure V ⊆ U :=
by sorry
