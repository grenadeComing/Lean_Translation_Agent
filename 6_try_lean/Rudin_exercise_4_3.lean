import Mathlib

open Set

variable {X : Type*} [MetricSpace X]

def zero_set (f : X → ℝ) : Set X := { x | f x = 0 }

theorem zero_set_is_closed {f : X → ℝ} (hf : Continuous f) : IsClosed (zero_set f) := by sorry
