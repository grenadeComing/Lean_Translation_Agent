import Mathlib
open Polynomial Ideal.Quotient
open Polynomial

/-- Let F = \mathbb{Z}_p be the field of integers \mod p, where p is a prime, and let q(x) \in F[x] be irreducible of degree n. Show that F[x]/(q(x)) is a field having at exactly p^n elements. -/
theorem card_field_ext (p : ℕ) [Fact p.Prime] (n : ℕ) (q : Polynomial (ZMod p)) (hq : Irreducible q) (hn : q.natDegree = n) :
  IsField (ZMod p)[x] ⧸ Ideal.span {q} ∧ Fintype (ZMod p)[x] ⧸ Ideal.span {q} ∧ Fintype.card (ZMod p)[x] ⧸ Ideal.span {q} = p ^ n := by sorry
