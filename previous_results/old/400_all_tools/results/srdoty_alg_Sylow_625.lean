import Mathlib

open Equiv

/-- The conjugacy classes of the symmetric group S_n correspond to integer partitions of n.
    We present this as an equivalence between the quotient of Perm (Fin n) by conjugacy
    and the subtype of multisets of positive natural numbers whose sum is n. -/
def conj_classes_equiv_partitions (n : ℕ) :
  Quotient (IsConj.setoid (Equiv.Perm (Fin n))) ≃ { m : Multiset ℕ // m.sum = n ∧ ∀ a, a ∈ m → a ≠ 0 } :=
by sorry
