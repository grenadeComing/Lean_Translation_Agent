import Mathlib
open Group

/-- Prove that if $p > q$ are two primes such that $q \mid p - 1$, then any two nonabelian groups of order $pq$ are isomorphic. -/
theorem iso_of_nonabelian_groups_of_prime_prop_extracted {p q : ℕ} : p.Prime → q.Prime → q ∣ p - 1 → ∀ (G H : Type u_1) [Group G] [Group H] [Fintype G] [Fintype H]
 [NonabelianGroup G] [NonabelianGroup H], orderOf G = p * q → orderOf H = p * q → G ≃* H := sorry