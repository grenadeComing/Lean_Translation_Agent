import Mathlib
open Filter Function Set Uniformity Topology

/-- A uniformly continuous function of a uniformly continuous function is uniformly continuous. -/
theorem uniformContinuous_comp {α β γ : Type*} [UniformSpace α] [UniformSpace β] [UniformSpace γ]
    {f : α → β} {g : β → γ} (hf : UniformContinuous f) (hg : UniformContinuous g) :
    UniformContinuous (g ∘ f) := by sorry
