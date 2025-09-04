import Mathlib

/-- Two permutations in S_n are conjugate iff they have the same cycle type. -/
theorem perm_isConj_iff_cycleType_eq (n : ℕ) (σ τ : Equiv.Perm (Fin n)) :
  IsConj σ τ ↔ σ.cycleType = τ.cycleType := by sorry

/-- The conjugacy classes of S_n are labelled by partitions of n: a bijection between
`ConjClasses (Equiv.Perm (Fin n))` and the subtype of `Multiset ℕ` with sum `n`. -/
def conj_classes_equiv_partitions (n : ℕ) :
  ConjClasses (Equiv.Perm (Fin n)) ≃ { m : Multiset ℕ // m.sum = n } := by sorry

/-- The number of distinct conjugacy classes equals the number of partitions of n. -/
theorem num_conj_classes_eq_num_partitions (n : ℕ) :
  Nat.card (ConjClasses (Equiv.Perm (Fin n))) = Nat.card { m : Multiset ℕ // m.sum = n } := by sorry
