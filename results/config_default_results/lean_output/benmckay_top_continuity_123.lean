import Mathlib

/-- Let X and Y be topological spaces, and let f,g : X → Y be continuous. Let A = {x ∈ X | f(x) = g(x)}. If Y is Hausdorff (T2), then A is closed in X. -/
theorem equalizer_is_closed {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] (f g : X → Y) (hf : Continuous f) (hg : Continuous g) (h : T2Space Y) : IsClosed ({x : X | f x = g x}) := by sorry
