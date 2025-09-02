import Mathlib

open Set

/-- Let (X, d_X) and (Y, d_Y) be metric spaces; let Y be complete. Let A ⊂ X.
If f : X → Y is uniformly continuous on A, then f can be uniquely extended to a continuous
function g on closure A, and g is uniformly continuous on closure A. -/
theorem uniform_continuous_on.extend_to_closure_unique {X Y : Type*} [MetricSpace X] [MetricSpace Y] [CompleteSpace Y]
  {A : Set X} {f : X → Y} (hf : UniformContinuousOn f A) :
  ∃! g : X → Y, (ContinuousOn g (closure A)) ∧ (∀ x ∈ A, g x = f x) ∧ (UniformContinuousOn g (closure A)) := by sorry
