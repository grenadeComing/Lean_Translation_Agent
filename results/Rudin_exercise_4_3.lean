import Mathlib

/-- Let f be a continuous real function on a metric space X. Let Z(f) (the zero set of f)
    be the set of all p in X at which f(p) = 0. This file states that Z(f) is closed. -/
theorem Rudin_exercise_4_3 {X : Type _} [MetricSpace X] {f : X → Real} (hf : Continuous f) :
  IsClosed ({ x : X | f x = 0 }) := by sorry
