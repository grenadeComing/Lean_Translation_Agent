import Mathlib

variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] [T2Space Y]

/-- Let X and Y be topological spaces, and let f, g : X → Y be continuous.
    Let A = { x ∈ X | f x = g x }. If Y is Hausdorff, then A is closed in X. -/
theorem is_closed_eq_locus {f g : X → Y} (hf : Continuous f) (hg : Continuous g) :
  IsClosed ({ x : X | f x = g x } : Set X) := by sorry
