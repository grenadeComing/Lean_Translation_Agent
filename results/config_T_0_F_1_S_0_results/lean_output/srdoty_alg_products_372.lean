import Mathlib

/-!
Show that the map φ : G → G × H given by φ(x) = (x,1) is an injective homomorphism.
-/

theorem phi_injective_hom {G H : Type _} [Group G] [Group H] :
  ∃ (φ : G →* G × H), ((φ : G → G × H) = fun x => (x, (1 : H))) ∧ Function.Injective (φ : G → G × H) := by sorry
