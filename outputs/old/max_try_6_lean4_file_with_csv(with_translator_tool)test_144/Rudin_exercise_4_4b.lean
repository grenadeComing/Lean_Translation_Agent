import Mathlib

open Set

variable {X Y : Type*} [MetricSpace X] [MetricSpace Y]

variable {f g : X → Y} {E : Set X}

/-- Let f and g be continuous mappings of a metric space X into a metric space Y,
and let E be a dense subset of X. If f = g on E, then f = g on X. -/
theorem continuous_eq_on_dense (hf : Continuous f) (hg : Continuous g) (hE : Dense E)
  (h : ∀ p ∈ E, f p = g p) : ∀ p : X, f p = g p := by sorry
