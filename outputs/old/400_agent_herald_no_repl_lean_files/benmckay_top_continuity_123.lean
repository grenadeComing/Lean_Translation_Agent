import Mathlib
open Set Filter Function Topology List

/-- Take two continuous maps f, g \colon X \to Y. Let A \subset X be the set of points at which f=g. If Y is Hausdorff, then A is closed.

Save it to: benmckay_top_continuity_123.lean -/
theorem isClosed_eqLocus_of_continuous_of_hausdorff {X Y : Type*} [TopologicalSpace X]
    [TopologicalSpace Y] [T2Space Y] {f g : X → Y} (hf : Continuous f) (hg : Continuous g) :
    IsClosed {x | f x = g x} := by sorry
