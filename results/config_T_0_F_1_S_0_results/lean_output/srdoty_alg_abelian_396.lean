import Mathlib

theorem finite_abelian_p_group_composition_factors_are_Zmod_p {p : ℕ} (hp : Nat.Prime p)
  (G : Type*) [CommGroup G] [Fintype G] (hpg : IsPGroup p G) :
  ∀ (H : Type*) [Group H] (f : G →* H) (hf : Function.Surjective (f : G → H)) (hH : IsSimpleGroup H),
    Nonempty (H ≃* Multiplicative (ZMod p)) := by sorry
