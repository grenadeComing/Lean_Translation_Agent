import Mathlib

open scoped BigOperators

/--
Exercise: Prove that 1^k + 2^k + ... + (p-1)^k ≡ 0 (mod p) if (p-1) ∤ k and ≡ -1 (mod p) if (p-1) ∣ k.
We state the result in ZMod p. The proof is omitted (sorry).
-/
theorem ireland_rosen_exercise_4_11 (p : ℕ) (hp : Nat.Prime p) (k : ℕ) :
  Finset.sum ((Finset.range p).erase 0) (fun i : ℕ => ((↑i : ZMod p) ^ k : ZMod p)) =
    (if (p - 1) ∣ k then (-1 : ZMod p) else (0 : ZMod p)) := by sorry
