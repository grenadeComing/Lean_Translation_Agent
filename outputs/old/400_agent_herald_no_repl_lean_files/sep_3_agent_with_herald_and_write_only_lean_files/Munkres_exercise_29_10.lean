import Mathlib

/-!
Exercise: Show that if X is a Hausdorff space that is locally compact at the point x,
then for each neighborhood U of x, there is a neighborhood V of x such that
closure V is compact and closure V ⊆ U.

We state a version where "locally compact at x" is expressed by the existence of a
compact set K with x in its interior. We express "neighborhood of x" by `x ∈ interior U`.
-/

open Set

variable {X : Type _} [TopologicalSpace X]

theorem Munkres_exercise_29_10 (x : X) (hT2 : T2Space X)
  (hloc : ∃ K : Set X, IsCompact K ∧ x ∈ interior K) :
  ∀ U : Set X, x ∈ interior U → ∃ V : Set X, x ∈ interior V ∧ IsCompact (closure V) ∧ closure V ⊆ U := by sorry
