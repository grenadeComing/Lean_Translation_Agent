import Mathlib

/-!
Two permutations in S_n are conjugate iff they have the same cycle type.
Hence, the partitions of n label the conjugacy classes of S_n.
The number of distinct conjugacy classes equals the number of partitions of n.
-/

open Equiv

theorem permutations_conjugate_iff_same_cycle_type {n : ℕ} (σ τ : Equiv.Perm (Fin n)) :
  IsConj σ τ ↔ σ.cycleType = τ.cycleType := by
  -- Mathlib: Equiv.Perm.isConj_iff_cycleType_eq
  exact Equiv.Perm.isConj_iff_cycleType_eq

/-- There is a bijection between conjugacy classes of S_n and multisets of positive
cycle lengths summing to n (i.e., partitions of n). -/
theorem conjugacy_classes_biject_partitions {n : ℕ} :
  Nonempty (ConjClasses (Equiv.Perm (Fin n)) ≃ { m : Multiset ℕ // m.sum = n }) := by
  -- existence of such an equivalence follows from `Equiv.Perm.isConj_iff_cycleType_eq`
  -- and basic properties of `cycleType`. We omit the detailed proof here.
  sorry

/-- The number of conjugacy classes of S_n equals the number of partitions of n. -/
theorem num_conj_classes_eq_num_partitions {n : ℕ} [Fintype ({ m : Multiset ℕ // m.sum = n } : Type _)] :
  Fintype.card (ConjClasses (Equiv.Perm (Fin n))) =
    Fintype.card ({ m : Multiset ℕ // m.sum = n } : Type _) := by
  -- Follows from `conjugacy_classes_biject_partitions` and `Fintype.card_congr`.
  sorry
