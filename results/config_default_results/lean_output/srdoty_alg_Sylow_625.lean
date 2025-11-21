import Mathlib

open Equiv

/-- The symmetric group on n letters. -/
def S_n (n : ℕ) := Equiv.Perm (Fin n)

/-- Conjugacy relation on S_n: σ is conjugate to τ if there exists g with (g ∘ σ ∘ g⁻¹) = τ. -/
def is_conj {n : ℕ} (σ τ : S_n n) : Prop := ∃ g : S_n n, (g.trans σ).trans g.symm = τ

/-- A partition of n represented as a list of natural numbers summing to n. -/
def PartitionOf (n : ℕ) := { p : List Nat // p.sum = n }

/-- The cycle type map assigning to a permutation its partition (cycle lengths).
    We postulate its existence for the statement-level translation. -/
axiom cycle_type {n : ℕ} : S_n n → PartitionOf n

/-- Two permutations in S_n are conjugate iff they have the same cycle type. -/
theorem two_permutations_conjugate_iff_same_cycle_type {n : ℕ} {σ τ : S_n n} :
  is_conj σ τ ↔ cycle_type σ = cycle_type τ := by sorry

/-- Hence, the partitions of n label the conjugacy classes of S_n: there is a map
    from permutations to partitions whose fibres are precisely the conjugacy classes,
    and that map is surjective. -/
theorem partitions_label_conj_classes (n : ℕ) :
  ∃ f : S_n n → PartitionOf n, (∀ σ τ, f σ = f τ ↔ is_conj σ τ) ∧ Function.Surjective f := by sorry

/-- Consequently, the number of distinct conjugacy classes equals the number of partitions of n:
    there exists a setoid on S_n whose quotient is in bijection with PartitionOf n. -/
theorem num_conj_classes_eq_num_partitions (n : ℕ) :
  ∃ (s : Setoid (S_n n)) (e : Quotient s ≃ PartitionOf n), (∀ σ τ, s.r σ τ ↔ is_conj σ τ) ∧ True := by sorry
