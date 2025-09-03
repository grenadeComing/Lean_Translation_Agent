import Mathlib
open BigOperators
open Real Nat Topology


/-- Prove that $\frac{(x+2)^p-2^p}{x}$, where $p$ is an odd prime, is irreducible in $\mathbb{Z}[x]$. Save it to: Dummit-Foote_exercise_9_4_2d.lean -/
theorem Dummit_Foote_exercise_9_4_2d (p : ℕ) (hp : p.Prime) (hp1 : Odd p) : Irreducible ((x + 2) ^ p - 2 ^ p) / x in Polynomial ℤ   :=  by sorry