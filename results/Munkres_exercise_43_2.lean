import Mathlib

open Set

variables {α β : Type*} [MetricSpace α] [MetricSpace β] [CompleteSpace β]

/-- Let (X, d_X) and (Y, d_Y) be metric spaces; let Y be complete. Let A ⊂ X.
If f : A → Y is uniformly continuous, then f can be uniquely extended to a continuous
function g : closure A → Y, and g is uniformly continuous. -/
theorem uniformly_extend_of_uniform_continuous {s : Set α} (f : {x : α // x ∈ s} → β)
  (hf : UniformContinuous f) :
  ∃! (g : {x : α // x ∈ closure s} → β),
    Continuous g ∧ UniformContinuous g ∧ ∀ x : {x : α // x ∈ s},
      g ⟨(x : α), subset_closure x.prop⟩ = f x := by sorry
