import Mathlib

/-- If f is uniformly continuous, it maps Cauchy sequences to Cauchy sequences. -/
theorem uniformly_continuous.cauchy_map {α β : Type _} [UniformSpace α] [UniformSpace β]
  {f : α → β} (hf : UniformContinuous f) {x : ℕ → α} (hx : CauchySeq x) :
  CauchySeq (f ∘ x) := by sorry
