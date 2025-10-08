import Mathlib

/-- Let F = ZMod p be the field of integers modulo p, where p is a prime,
and let q(x) ∈ F[x] be irreducible of degree n. Then F[x]/(q(x)) is a field having exactly p^n elements. -/
theorem Herstein_exercise_4_5_16 (p : ℕ) (hp : Nat.Prime p) (n : ℕ)
  (q : Polynomial (ZMod p)) (hq : Irreducible q) (hdeg : q.natDegree = n)
  [Fintype (Polynomial (ZMod p) ⧸ Ideal.span ({q} : Set (Polynomial (ZMod p))))] :
  IsField (Polynomial (ZMod p) ⧸ Ideal.span ({q} : Set (Polynomial (ZMod p)))) ∧
  Fintype.card (Polynomial (ZMod p) ⧸ Ideal.span ({q} : Set (Polynomial (ZMod p)))) = p ^ n := by
  sorry
