import Mathlib

/-- The embedding φ : G → G × H given by φ(x) = (x,1) is an injective homomorphism. -/
theorem left_embed_injective_hom {G H : Type*} [Group G] [Group H] :
  ∃ (f : G →* G × H), ((f : G → G × H) = fun x => (x, (1 : H))) ∧ Function.Injective (f : G → G × H) := by sorry
