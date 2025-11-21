import Mathlib
open Equiv

/-- Conjugation of the transposition (1 2) by the n-cycle shifts it to (i i+1).

We assume explicit bounds/proofs for Fin.mk arguments to avoid using holes in the statement header.
-/
theorem conjugation_shift (n : ℕ)
  (h0 : 0 < n) (h1 : 1 < n)
  (alpha beta : Perm (Fin n))
  (halpha : alpha = swap (Fin.mk 0 h0) (Fin.mk 1 h1))
  (hbeta : ∀ k : Fin n, beta k = Fin.mk ((k.val + 1) % n) (Nat.mod_lt (k.val + 1) h0))
  (i : ℕ) (hi1 : 1 < i) (hi2 : i < n) (hi0 : i - 1 < n) :
  (swap (Fin.mk (i - 1) hi0) (Fin.mk i hi2) = (beta ^ (i - 1)) * alpha * (beta ^ (i - 1))⁻¹)
    ∧ (swap (Fin.mk (i - 1) hi0) (Fin.mk i hi2) = (beta ^ (i - 1)) * alpha * beta ^ (n - i + 1)) := by sorry
