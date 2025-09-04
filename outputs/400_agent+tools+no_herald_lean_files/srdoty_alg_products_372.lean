import Mathlib

section
variable {G H : Type*} [Group G] [Group H]

/-- The map φ : G → G × H, φ(x) = (x,1), is an injective homomorphism. -/
theorem exists_injective_mul_hom : ∃ (f : G →* G × H),
  (∀ x, f x = (x, (1 : H))) ∧ Function.Injective (f : G → G × H) := by
  sorry

end
