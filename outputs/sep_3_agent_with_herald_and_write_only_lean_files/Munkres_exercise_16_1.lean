import Mathlib

/-- If Y is a subspace of X, and A is a subset of Y, then the topology A inherits as a subspace
of Y is the same as the topology it inherits as a subspace of X. -/

theorem subspace_subspace_eq {X : Type*} (t : TopologicalSpace X)
  {Y : Set X} {A : Set Y} :
  -- regard A as a subset of X via the subtype mapping (subtype.val : A → X)
  TopologicalSpace.induced (Subtype.val : A → X) t =
    -- first induce t on Y, then induce on A (as subset of Y)
    TopologicalSpace.induced (Subtype.val : A → Y) (TopologicalSpace.induced (Subtype.val : Y → X) t) := by sorry
