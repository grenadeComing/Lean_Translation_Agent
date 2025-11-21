import Mathlib

/-- A partition of n as a list of positive natural numbers summing to n. -/
def PartitionN (n : ℕ) : Type :=
  { l : List ℕ // l.sum = n ∧ ∀ a ∈ l, a > 0 }

/-- Conjugacy relation on permutations of Fin n: π ~ τ iff τ = σ ◦ π ◦ σ^{-1} for some σ. -/
def conj_rel (n : ℕ) : Equiv.Perm (Fin n) → Equiv.Perm (Fin n) → Prop :=
  fun π τ => ∃ σ : Equiv.Perm (Fin n), τ = σ.trans (π.trans σ.symm)

/-- There exists a function from permutations to partitions that is constant on conjugacy classes
    and distinguishes classes; i.e., it induces a bijection between conjugacy classes and partitions. -/
theorem conjugacy_classes_bij (n : ℕ) :
  ∃ f : Equiv.Perm (Fin n) → PartitionN n,
    (∀ π τ, (conj_rel n π τ) ↔ f π = f τ) ∧ Function.Surjective f := by sorry
