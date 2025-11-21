import Mathlib

/- Let G be a group of order p^r where p is prime and r ≥ 1. Prove that |Z(G)| = p^k for some integer k ≥ 1. -/

-- We state the theorem (no proof; ends with := by sorry as required).

theorem card_center_eq_prime_pow {G : Type*} [Group G] [Fintype G] {p : ℕ} {r : ℕ}
  (hG : Fintype.card G = p ^ r) (hp : Nat.Prime p) (hr : 0 < r)
  (hZf : Fintype (Subgroup.center G)) :
  ∃ k : ℕ, 1 ≤ k ∧ Fintype.card (Subgroup.center G) = p ^ k := by sorry
