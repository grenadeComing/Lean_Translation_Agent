import Mathlib

/--
Let X be locally path connected in the sense that every point has a basis of
path-connected neighborhoods. Show that every connected open set in X is path connected.
-/
theorem Munkres_exercise_25_4 {X : Type _} [TopologicalSpace X]
  (local_path : ∀ x : X, ∃ U : Set X, IsOpen U ∧ x ∈ U ∧ IsPathConnected (U : Set X))
  (s : Set X) (hs : IsOpen s) (hconn : IsConnected s) : IsPathConnected s := by sorry
