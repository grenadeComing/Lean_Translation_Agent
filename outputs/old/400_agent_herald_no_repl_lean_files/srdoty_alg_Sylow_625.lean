import Mathlib

open Equiv

/-- Two permutations in S_n are conjugate if and only if they have the same cycle type. -/
theorem perm_conj_iff_same_cycle_type {n : ℕ} (σ τ : Equiv.Perm (Fin n)) :
  IsConj σ τ ↔ σ.cycle_type = τ.cycle_type := by sorry

/-- The conjugacy classes of S_n are in bijection with partitions of n. -/
theorem conj_classes_symmetric_group_equiv_partitions (n : ℕ) :
  ConjClasses (Equiv.Perm (Fin n)) ≃ Partition n := by sorry

/-- Hence the number of conjugacy classes of S_n equals the number of partitions of n. -/
theorem num_conj_classes_symm_eq_num_partitions (n : ℕ) :
  Nat.card (ConjClasses (Equiv.Perm (Fin n))) = Nat.card (Partition n) := by sorry
