import Mathlib

/-- Let (X, d_X) and (Y, d_Y) be metric spaces; let Y be complete. Let A ⊂ X. Show that if f : A → Y is uniformly continuous, then f can be uniquely extended to a continuous function g : closure A → Y, and g is uniformly continuous. -/

variable {X Y : Type*} [MetricSpace X] [MetricSpace Y] [CompleteSpace Y]
variable (A : Set X) (f : A → Y)

open Set

theorem uniformly_continuous_extend_to_closure (hf : UniformContinuous f) :
  ∃! (g : closure A → Y),
    Continuous g ∧ (∀ x : A, g ⟨(x : X), subset_closure x.2⟩ = f x) ∧ UniformContinuous g := by
  sorry
