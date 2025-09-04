import Mathlib

variable {X : Type*} [TopologicalSpace X] {E : Type*} [TopologicalSpace E] [Add E]

variable {f g : X → E}

/-- If f and g are continuous maps X → E (e.g. E = ℝ^n), then their pointwise sum is continuous. -/
theorem continuous_add (hf : Continuous f) (hg : Continuous g) :
  Continuous (fun x => f x + g x) := by sorry
