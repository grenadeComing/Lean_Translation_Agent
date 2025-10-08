import Mathlib

/--
Let φ : P → Q be a smooth map of manifolds with dim P = dim Q.
There is a dense set of points p0 ∈ P such that φ is a local diffeomorphism
in a neighborhood of each such p0.

This file records the statement; the proof is omitted (``sorry'').
-/
theorem smooth_map_equal_dim_dense_local_diffeo {P Q : Type*} [TopologicalSpace P] [TopologicalSpace Q]
  (φ : P → Q) :
  ∃ S : Set P, IsDense S ∧ ∀ p ∈ S, IsLocalDiffeomorphAt φ p := by sorry
