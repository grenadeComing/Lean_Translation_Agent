import Mathlib

/-- Let |G| = p*q*r where p<q<r are primes. Then G has a normal Sylow subgroup for either p, q or r. -/
theorem Dummit_Foote_exercise_4_5_16 {G : Type*} [Group G] [Fintype G] {p q r : ℕ}
  (hp : Nat.Prime p) (hq : Nat.Prime q) (hr : Nat.Prime r) (hlt1 : p < q) (hlt2 : q < r)
  (hcard : Fintype.card G = p * q * r) :
  ∃ (H : Subgroup G) (hH : Fintype H), (Fintype.card H = p ∨ Fintype.card H = q ∨ Fintype.card H = r) ∧
    (∀ x g : G, g ∈ H → x * g * x⁻¹ ∈ H) := by sorry