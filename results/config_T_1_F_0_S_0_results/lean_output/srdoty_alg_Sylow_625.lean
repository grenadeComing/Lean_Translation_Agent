import Mathlib

/-- A formal placeholder: the cycle type of a permutation of Fin n, represented as a multiset of cycle lengths. -/
axiom cycle_type {n : ℕ} (σ : Perm (Fin n)) : Multiset ℕ

/-- Two permutations in S_n are conjugate iff they have the same cycle type. -/
theorem perm_conj_iff_cycle_type {n : ℕ} (σ τ : Perm (Fin n)) :
  (∃ ρ : Perm (Fin n), ρ * σ * ρ⁻¹ = τ) ↔ cycle_type σ = cycle_type τ := by sorry

/-- Hence the conjugacy classes of S_n are in bijection with integer partitions of n,
    represented as multisets of positive integers summing to n. -/
theorem conj_classes_equiv_partitions (n : ℕ) :
  (Quotient (fun σ τ : Perm (Fin n) => ∃ ρ : Perm (Fin n), ρ * σ * ρ⁻¹ = τ)) ≃ { m : Multiset ℕ // m.sum = n } := by sorry

/-- In particular, the number of distinct conjugacy classes equals the number of partitions of n. -/
theorem card_conj_classes_eq_number_of_partitions (n : ℕ) :
  Fintype.card (Quotient (fun σ τ : Perm (Fin n) => ∃ ρ : Perm (Fin n), ρ * σ * ρ⁻¹ = τ)) =
  Fintype.card ({ m : Multiset ℕ // m.sum = n } : Type _) := by sorry