import Mathlib

open Equiv

/-- A (naive) representation of a partition of n as a list of positive integers summing to n. -/
def Partitions (n : ℕ) : Type := { l : List ℕ // l.sum = n ∧ ∀ a ∈ l, a > 0 }

/--
There exists a cycle-type classifier `cycle_type` sending a permutation in S_n to a partition
of n, and it classifies conjugacy: two permutations are conjugate iff they have the same
cycle type.
-/
theorem exists_cycle_type_classifying_conjugacy (n : ℕ) :
  ∃ (cycle_type : (Equiv.Perm (Fin n)) → Partitions n),
    ∀ σ τ : Equiv.Perm (Fin n), IsConj σ τ ↔ cycle_type σ = cycle_type τ := by
  sorry

/-- The conjugacy classes of S_n are in bijection with partitions of n. -/
theorem conjugacy_classes_equiv_partitions (n : ℕ) :
  ∃ (e : ConjClasses (Equiv.Perm (Fin n)) ≃ Partitions n), True := by
  sorry
