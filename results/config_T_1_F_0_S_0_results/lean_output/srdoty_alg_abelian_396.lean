import Mathlib

variable {G : Type _} [AddCommGroup G] [Fintype G]

/-- Let p be a prime and G a finite abelian p-group (|G| = p^n).
    If N is a maximal proper additive subgroup of G, then the quotient G/N is
    (additively) isomorphic to ZMod p, i.e. cyclic of order p. -/
theorem composition_factors_of_finite_abelian_p_group_are_ZMod_p
  (p : ℕ) (hp : p.Prime) {n : ℕ} (hcard : Fintype.card G = p ^ n) :
  ∀ (N : AddSubgroup G), N ≠ ⊤ → (∀ M : AddSubgroup G, N ≤ M → (M = N ∨ M = ⊤)) → (G ⧸ N) ≃+ ZMod p :=
  by sorry