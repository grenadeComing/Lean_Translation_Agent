import Mathlib

/-- Let N be a positive integer. Let M be an integer relatively prime to N and let d be an integer relatively prime to φ(N), where φ denotes Euler's φ-function. Prove that if M1 ≡ M^d (mod N) then M ≡ M1^{d'} (mod N) where d' is the inverse of d mod φ(N): d d' ≡ 1 (mod φ(N)). -/
theorem dummit_foote_ex_8_1_12 {n : ℕ} (hn : 1 < n) {M M1 : Int} {d d' : ℕ}
  (hM : Int.gcd M (n : Int) = 1)
  (hd : Nat.Coprime d (Nat.totient n))
  (hcong : Int.ModEq (n : Int) M1 (M ^ d))
  (hinv : Nat.ModEq (Nat.totient n) (d * d') 1) :
  Int.ModEq (n : Int) M (M1 ^ d') := by sorry
