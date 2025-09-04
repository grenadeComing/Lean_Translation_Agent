import Mathlib

theorem srdoty_alg_Sylow_421 {G : Type*} [Group G] [Fintype G] {p : ℕ}
  (hp : p.Prime) (hp_ne_two : p ≠ 2) (hcard : Fintype.card G = 2 * p) :
  Nonempty (G ≃* Multiplicative (ZMod (2 * p))) ∨
  (∃ (φ : Multiplicative (ZMod 2) →* MulAut (Multiplicative (ZMod p))),
    Nonempty (G ≃* SemidirectProduct (Multiplicative (ZMod p)) (Multiplicative (ZMod 2)) φ)) := by sorry
