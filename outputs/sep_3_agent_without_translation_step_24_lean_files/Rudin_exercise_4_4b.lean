import Mathlib

open Set

theorem Rudin_exercise_4_4b {X Y : Type*} [MetricSpace X] [MetricSpace Y]
  {f g : X → Y} (hf : Continuous f) (hg : Continuous g) {E : Set X} (hE : Dense E)
  (h : ∀ p ∈ E, f p = g p) : ∀ x : X, f x = g x := by sorry
