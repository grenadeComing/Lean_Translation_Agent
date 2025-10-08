import Mathlib

/-- Rudin exercise 4.4(b): If f and g are continuous maps between metric spaces X and Y,
and E is dense in X, and f = g on E, then f = g on X. -/
theorem Rudin_exercise_4_4b {X Y : Type _} [MetricSpace X] [MetricSpace Y]
  {f g : X → Y} (E : Set X) (hf : Continuous f) (hg : Continuous g) (hd : Dense E)
  (hE : ∀ p ∈ E, f p = g p) : ∀ p : X, f p = g p := by sorry
