import Mathlib
open Finset

/-- Exercise: For a prime p and k : ℕ,
    ∑_{a=1}^{p-1} a^k ≡ 0 (mod p) if (p-1) ∤ k, and ≡ -1 (mod p) if (p-1) ∣ k. -/
theorem Ireland_Rosen_exercise_4_11 (p k : ℕ) (hp : p.Prime) :
  Finset.sum (Finset.range (p - 1)) (fun a => (↑(a+1) : ZMod p) ^ k) = if (p - 1) ∣ k then (-1 : ZMod p) else 0 := by
  sorry
