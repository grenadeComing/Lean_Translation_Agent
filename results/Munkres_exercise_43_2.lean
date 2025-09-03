import Mathlib

/--
Let (X, d_X) and (Y, d_Y) be metric spaces; let Y be complete. Let A ⊂ X.
If f : A → Y is uniformly continuous (where A is viewed as a subtype), then f
can be uniquely extended to a continuous function g : closure A → Y, and g is
uniformly continuous.
-/
theorem Munkres_exercise_43_2 {X Y : Type*} [MetricSpace X] [MetricSpace Y]
  [CompleteSpace Y] {A : Set X} (f : ↥A → Y) (hf : UniformContinuous f) :
  ∃! (g : ↥(closure A) → Y), (∀ a : ↥A, g ⟨a.1, subset_closure a.2⟩ = f a) ∧ UniformContinuous g := by sorry
