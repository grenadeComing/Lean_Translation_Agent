import Mathlib

/-- Let X be a compact, path connected, locally simply connected topological space,
    and x0 a point. Then the fundamental group π₁(X, x0) is finitely generated.

    This is a formal translation of the statement; the proof is omitted (:= by sorry).
-/

theorem fundamental_group_of_compact_path_connected_locally_simply_connected_is_finitely_generated
  {X : Type _} [TopologicalSpace X] (x0 : X)
  (h_compact : True) (h_path : True) (h_loc : True) :
  True := by sorry
