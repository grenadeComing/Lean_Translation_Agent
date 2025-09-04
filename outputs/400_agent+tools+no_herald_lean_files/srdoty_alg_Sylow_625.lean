import Mathlib

open Equiv

/-!
Two permutations in S_n are conjugate iff they have the same cycle type.
Hence the partitions of n label the conjugacy classes of S_n, and the
number of conjugacy classes equals the number of partitions of n.

We state these facts as Lean theorems (without proofs).
-/

variable {n : Nat}

/-- For permutations of `Fin n`, conjugacy is equivalent to having the same cycle type. -/
theorem perm_isConj_iff_cycleType {n : Nat} {σ τ : Perm (Fin n)} :
  IsConj σ τ ↔ σ.cycleType = τ.cycleType := by sorry

/-- The map sending a conjugacy class of `Perm (Fin n)` to its cycle type
is a bijection between `ConjClasses (Perm (Fin n))` and the multisets of
natural numbers summing to `n` (i.e., partitions of `n`). -/
noncomputable def conjClasses_equiv_cycle_types {n : Nat} :
  ConjClasses (Perm (Fin n)) ≃ { m : Multiset Nat // m.sum = n } := by sorry

/-- Consequently, the number of conjugacy classes of `S_n` equals the number of
partitions of `n`. -/
theorem num_conj_classes_eq_num_partitions {n : Nat} :
  Nat.card (ConjClasses (Perm (Fin n))) = Nat.card { m : Multiset Nat // m.sum = n } := by sorry
