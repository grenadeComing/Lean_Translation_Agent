import Mathlib

variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] {f g : X → Y}

/-- The set A of points where f and g agree. -/
def A : Set X := { x | f x = g x }

/-- If f and g are continuous and Y is Hausdorff (T2), then the equalizer A = {x | f x = g x} is closed. -/
theorem is_closed_A_of_continuous (hf : Continuous f) (hg : Continuous g) [T2Space Y] : IsClosed (A : Set X) := by sorry
