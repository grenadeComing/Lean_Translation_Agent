import Mathlib


/-- Prove that no group of order p q, where p and q are prime, is simple. -/
theorem not_isSimpleGroup_card_prime_mul (G : Type*) [Group G] [Fintype G] {p q : ℕ} (hp : p.Prime) (hq : q.Prime) : ¬IsSimpleGroup G := by sorry
