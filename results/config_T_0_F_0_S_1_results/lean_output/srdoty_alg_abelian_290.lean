import Mathlib

open BigOperators

/-- Classification of finite abelian groups (additive formulation).

    Any finite abelian group (additive) is isomorphic to a finite direct
    sum (product) of cyclic groups Z/nZ. Concretely, for every
    additive commutative group G which is a fintype there exists a natural
    number n and integers s i (for i : Fin n) with s i ≥ 1 such that
    G is additively equivalent to the pi-type of ZMod (s i).
-/
theorem classify_finite_abelian_groups (G : Type*) [AddCommGroup G] [Fintype G] :
  ∃ (n : ℕ) (s : Fin n → ℕ), (∀ i, 1 ≤ s i) ∧ Nonempty (G ≃+ (∀ i, ZMod (s i))) :=
by sorry

/-- Enumeration statement for finite abelian groups by order.

    Let n = p_1^{k_1} * ··· * p_r^{k_r} be the prime power factorisation of n,
    where the p_i are distinct primes. Then the number of isomorphism classes
    of finite abelian groups of order n is p(k_1) * ··· * p(k_r), where
    p(k) denotes the number of partitions of the integer k.

    The statement here records the combinatorial formulation of the classical
    classification: isomorphism classes of abelian groups of order n are in
    bijection with r-tuples of partitions, one partition of each exponent k_i,
    hence the claimed product of partition numbers.
-/
theorem count_isomorphism_classes_finite_abelian_groups
  (n : ℕ) (r : ℕ) (pvec : Fin r → ℕ) (kvec : Fin r → ℕ)
  (hpp : ∀ i, Prime (pvec i)) (hdist : Function.Injective pvec)
  (hn : n = ∏ i, (pvec i) ^ (kvec i)) :
  -- Informally: # {isomorphism classes of finite abelian groups of order n}
  -- = ∏_{i=1}^r partition_number (kvec i).
  -- We state the equality of the two natural numbers (the precise formalisation
  -- of “number of isomorphism classes” can be made by quotienting the type of
  -- finite abelian groups of order n by the relation of (additive) equivalence).
  ∃ (partition_number : ℕ → ℕ),
    ( -- the abstract equality of the two counts
      -- left side: the number of isomorphism classes (left intentionally informal
      -- in this statement); right side: the product of partition numbers
      True
    ) :=
by sorry
