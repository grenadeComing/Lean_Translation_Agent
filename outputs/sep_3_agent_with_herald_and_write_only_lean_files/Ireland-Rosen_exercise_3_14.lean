import Mathlib
open BigOperators
open Real Nat Topology


/-- Let $p$ and $q$ be distinct odd primes such that $p-1$ divides $q-1$. If $(n, p q)=1$, show that $n^{q-1} \equiv 1(p q)$. Save it to: Ireland-Rosen_exercise_3_14.lean -/
theorem Ireland_Rosen_exercise_3_14 (p q n : ℕ) (hp : p.Prime) (hq : q.Prime) (hpq : p ≠ q) (h : p - 1 ∣ q - 1) (h2 : (n : ZMod (p * q)) ≠ 0) : n ^ (q - 1) ≡ 1 [ZMOD p * q]  :=  by sorry
