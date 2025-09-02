import Mathlib
open Topology

/-- Let f : X → X be continuous. Show that if X = [0, 1], there is a point x such that f(x) = x.
(The point x is called a fixed point of f.) -/
theorem exists_fixed_point_of_continuous {f : ℝ → ℝ} (hf : ContinuousOn f (Set.Icc 0 1)) :
    ∃ x ∈ Set.Icc 0 1, f x = x := by sorry
