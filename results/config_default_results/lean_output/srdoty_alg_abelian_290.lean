import Mathlib

/-!
Any finite abelian group is isomorphic to a direct product of cyclic groups.
If n = p_1^{k_1} ... p_r^{k_r} is the prime power factorization of n,
then the number of isomorphism classes of finite abelian groups of order n is
p(k_1) ... p(k_r), where p(k) denotes the number of partitions of k.
-/

/-- Structure theorem for finite abelian groups (existence form).
There exist a finite index `Fin n` and exponents `m : Fin n → ℕ` such that
`G` is additively isomorphic to the product of cyclic groups `ZMod (m i)`. -/
theorem finite_abelian_structure {G : Type*} [AddCommGroup G] [Fintype G] :
  ∃ (n : ℕ) (m : Fin n → ℕ), Nonempty (G ≃+ (∀ i : Fin n, ZMod (m i))) := by sorry

/-- Counting statement (abstract/formalized): if n = ∏ p_i^{k_i} is the prime
power factorization of `n`, then the number of isomorphism classes of finite
abelian groups of order `n` equals ∏ p(k_i), where `p : ℕ → ℕ` denotes the
partition-count function. Here we state this as the existence of a type `C`
with a `Fintype` instance whose cardinality equals the desired product. -/
theorem count_iso_classes (p : ℕ → ℕ) (n : ℕ) :
  ∃ (C : Type*) (inst : Fintype C), Fintype.card C = (n.factorization.support.prod fun q => p (n.factorization q)) := by sorry
