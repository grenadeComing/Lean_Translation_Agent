import Mathlib

/-!
  Translation of: Any finite abelian group is isomorphic to a direct product of cyclic groups.
  If n = p1^k1 * ... * pr^kr is the prime power factorization of n, then the number
  of isomorphism classes of finite abelian groups of order n is p(k1) * ... * p(kr),
  where p(k) is the number of partitions of k.

  This file states the classification theorem and the counting statement. Proofs are omitted (sorry).
-/

open Nat

-- First, the standard classification statement: any finite abelian group is a product of cyclic groups.
-- Use additive formulation because ZMod is an additive group.
theorem finite_abelian_group_isomorphic_prod_cyclic (G : Type*) [AddCommGroup G] [Fintype G] :
  ∃ (m : ℕ) (ns : Fin m → ℕ),
    Nonempty (G ≃+ (∀ i : Fin m, ZMod (ns i))) := by sorry

-- To formulate the counting statement we introduce a placeholder giving the number of
-- isomorphism classes of finite abelian groups of order n. (In a full development this would
-- be defined as the cardinality of the quotient of all abelian groups of order n by isomorphism.)
noncomputable def num_iso_classes (n : ℕ) : ℕ := 0

-- Placeholder partition counting function p(k) = number of partitions of k.
noncomputable def partition_count (k : ℕ) : ℕ := 0

-- Counting statement: given a prime power factorization n = ∏ p_i ^ k_i, the number of
-- isomorphism classes equals ∏ p(k_i).
theorem number_of_isomorphism_classes_of_finite_abelian_groups (n : ℕ) :
  ∀ (r : ℕ) (p : Fin r → ℕ) (k : Fin r → ℕ),
    (∀ i, Nat.Prime (p i)) →
    n = ∏ i, (p i) ^ (k i) →
    num_iso_classes n = ∏ i, partition_count (k i) := by sorry
