import Mathlib

universe u v w

lemma rudin_exercise_4_12 {α : Type u} {β : Type v} {γ : Type w} [UniformSpace α] [UniformSpace β] [UniformSpace γ]
  {f : α → β} {g : β → γ} (hf : UniformContinuous f) (hg : UniformContinuous g) :
  UniformContinuous (g ∘ f) := by sorry
