import Mathlib

open BigOperators

/-- Any finite abelian (additive) group is isomorphic to a finite direct product of cyclic groups. -/
theorem finite_abelian_group_is_prod_cyclic (G : Type _) [AddCommGroup G] [Fintype G] :
  ∃ (m : ℕ) (n : Fin m → ℕ), Nonempty (AddEquiv G (∀ i, ZMod (n i))) := by sorry

/-
Remark (classification and counting).
If n = p_1^{k_1} * ... * p_r^{k_r} is the prime-power factorization of n, then the
number of isomorphism classes of finite abelian groups of order n equals
p(k_1) * ... * p(k_r), where p(k) denotes the number of partitions of k.
This statement is the classical enumeration part of the classification theorem.
-/
