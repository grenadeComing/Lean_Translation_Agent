import Mathlib

theorem Rudin_exercise_4_12 {α β γ : Type*} [UniformSpace α] [UniformSpace β] [UniformSpace γ]
  {f : α → β} {g : β → γ} (hf : UniformContinuous f) (hg : UniformContinuous g) :
  UniformContinuous (g ∘ f) := by sorry
