import Mathlib

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] [T2Space X]

/-- If continuous maps `f, g : X → Y` agree on a dense subset of `X`, then they are equal. -/
theorem continuous_eq_on_dense {f g : X → Y} (hf : Continuous f) (hg : Continuous g)
  {s : Set X} (hs : Dense s) (hfg : ∀ x ∈ s, f x = g x) : f = g := by sorry
