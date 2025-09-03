import Mathlib

/-- Let X and Y be metric spaces. If f and g are continuous maps X → Y that agree on a dense
subset E of X, then f and g agree on all of X. -/
theorem Rudin_exercise_4_4b {X Y : Type*} [MetricSpace X] [MetricSpace Y]
  {E : Set X} {f g : X → Y}
  (hE : Dense E) (hf : Continuous f) (hg : Continuous g)
  (h : ∀ p ∈ E, f p = g p) : ∀ p : X, f p = g p := by sorry
