import Mathlib

/-- Let |G|=p q r, where p, q and r are primes with p<q<r. Prove that G has a normal Sylow subgroup for either p, q or r. -/
theorem exists_normal_Sylow_of_prime_dvd_card {G : Type*} [Group G] {p q r : ℕ} (hp : p.Prime)
    (hq : q.Prime) (hr : r.Prime) (hpq : p < q) (hqr : q < r) (hG : Nat.card G = p * q * r) :
    ∃ P : Sylow p G, (P : Subgroup G).Normal ∨ ∃ Q : Sylow q G, (Q : Subgroup G).Normal ∨ ∃ R : Sylow r G,
      (R : Subgroup G).Normal := by sorry
