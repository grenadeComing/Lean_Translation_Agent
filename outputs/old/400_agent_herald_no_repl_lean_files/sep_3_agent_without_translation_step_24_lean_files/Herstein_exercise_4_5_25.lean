import Mathlib

open Polynomial
open scoped BigOperators

/--
Exercise: If p is a prime, show that q(x) = 1 + x + x^2 + ... + x^{p-1} is irreducible in ℚ[x].
This polynomial equals the p-th cyclotomic polynomial Φ_p(X) and hence is irreducible over ℚ.
-/
theorem Herstein_exercise_4_5_25 (p : ℕ) (hp : Nat.Prime p) :
  Irreducible ((Finset.range p).sum fun i => (X : ℚ[X]) ^ i) := by
  -- Proof omitted.
  sorry
