import Mathlib

/- Show that the map φ : G → G × H given by φ x = (x,1) is an injective homomorphism. -/
theorem embed_left_injective_hom {G H : Type*} [Group G] [Group H] :
  (∀ x y : G, (x * y, (1 : H)) = (x, (1 : H)) * (y, (1 : H))) ∧
  Function.Injective (fun x : G => (x, (1 : H))) := by sorry