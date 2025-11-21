import Mathlib

open Equiv

/-- Power (iterate composition) of a permutation. -/
def perm_pow {α : Sort _} (e : Perm α) : Nat → Perm α
| 0 => Equiv.refl α
| Nat.succ k => Equiv.trans (perm_pow k) e

/--
Let n ≥ 2 and let α = (1 2) and β = (1 2 … n) in Sym_n.
For any 1 < i < n, (i,i+1) = β^(i-1) α β^{-(i-1)} = β^(i-1) α β^{n-i+1}.
We state this for permutations of Fin n. We assume β acts by adding 1 modulo n and has order n.
-/
theorem srdoty_alg_abstract_gps_1108 (n : ℕ) (hn : 2 ≤ n)
  (β : Perm (Fin n))
  (hβ_cycle : ∀ k : Fin n, (β k).val = (k.val + 1) % n)
  (hβ_order : perm_pow β n = Equiv.refl (Fin n)) :
  ∀ i : ℕ, 1 < i → i < n →
    let α := swap (0 : Fin n) (1 : Fin n) in
    let βk := perm_pow β (i - 1) in
    Equiv.trans (Equiv.trans βk α) βk.symm = swap (βk 0) (βk 1) ∧
    Equiv.trans (Equiv.trans βk α) βk.symm = Equiv.trans (Equiv.trans (perm_pow β (i - 1)) α) (perm_pow β (n - i + 1)).symm := by sorry
