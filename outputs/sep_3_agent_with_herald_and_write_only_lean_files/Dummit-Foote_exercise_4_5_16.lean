import Mathlib
open MulAction Subgroup
open Pointwise
open Equiv Equiv.Perm Finset Function List QuotientGroup

/-- Let $|G|=p q r$, where $p, q$ and $r$ are primes with $p<q<r$. Prove that $G$ has a normal Sylow subgroup for either $p, q$ or $r$. -/
theorem exists_normal_Sylow_of_card_eq_mul_three_primes {G : Type*} [Group G]
  {p q r : ℕ} [Fact p.Prime] [Fact q.Prime] [Fact r.Prime] [Fintype G]
  (card_G : Nat.card G = p * q * r) (hpq : p < q) (hqr : q < r) :
  ∃ P, Normal P ∧ Sylow p ↥P ∨ ∃ Q, Normal Q ∧ Sylow q ↥Q ∨ ∃ R, Normal R ∧ Sylow r ↥R := by sorry
