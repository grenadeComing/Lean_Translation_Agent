import Mathlib

open Equiv

/-- Two permutations in S_n are conjugate iff they have the same cycle type. -/
theorem perm_conj_iff_same_cycle_type {n : ℕ} (σ τ : Perm (Fin n)) :
  IsConj σ τ ↔ cycle_type σ = cycle_type τ := by sorry

/-- Hence, the partitions of n label the conjugacy classes of S_n. -/
theorem conjugacy_classes_symmetric_group_equiv_partitions (n : ℕ) :
  ConjClasses (Perm (Fin n)) ≃ { μ : Multiset ℕ // μ.sum = n } := by sorry

/-- The number of distinct conjugacy classes equals the number of partitions of n. -/
theorem num_conj_classes_eq_num_partitions (n : ℕ) :
  Nat.card (ConjClasses (Perm (Fin n))) = Nat.card ({ μ : Multiset ℕ // μ.sum = n }) := by sorry
