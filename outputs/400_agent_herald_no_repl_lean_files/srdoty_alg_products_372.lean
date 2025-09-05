import Mathlib

theorem embed_left_injective_hom {G H : Type _} [Monoid G] [Monoid H] :
  ∃ (φ : G →* G × H), Function.Injective (φ : G → G × H) := by sorry
