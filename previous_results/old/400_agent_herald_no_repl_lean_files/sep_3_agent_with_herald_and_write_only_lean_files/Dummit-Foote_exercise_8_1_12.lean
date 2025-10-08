import Mathlib

open Int

/--
Let N be a positive integer. Let M be an integer relatively prime to N and let d be an
integer relatively prime to φ(N), where φ denotes Euler's φ-function. Prove that if
M1 ≡ M^d (mod N) then M ≡ M1^{d'} (mod N) where d' is the inverse of d mod φ(N):
d d' ≡ 1 (mod φ(N)).

This file states the exercise in Lean; the proof is omitted ("by sorry").
-/

theorem Dummit_Foote_exercise_8_1_12 (N : Nat) (M M1 : Int) (d d' : Nat)
  (hN : 1 < N)
  (hM_coprime : Int.gcd M (Int.ofNat N) = 1)
  (hd_invertible : ((d * d') : Int) ≡ 1 [MOD (Int.ofNat (Nat.totient N))])
  (hM1_def : M1 ≡ M ^ d [MOD (Int.ofNat N)]) :
  M ≡ M1 ^ d' [MOD (Int.ofNat N)] := by sorry
