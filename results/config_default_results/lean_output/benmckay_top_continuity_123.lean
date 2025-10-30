import Mathlib.Topology.Basic

/-- Let X and Y be topological spaces, and let f,g : X → Y be continuous.
Let A = { x : X | f x = g x }.
If Y is Hausdorff, prove that A is closed in X. -- placeholder description
-/
theorem benmckay_top_continuity_123
  (X Y : Type*) [TopologicalSpace X] [TopologicalSpace Y]
  (f g : X → Y) (hf : Continuous f) (hg : Continuous g) [T2Space Y] :
  IsClosed { x : X | f x = g x } := by
  -- translation placeholder
  sorry
