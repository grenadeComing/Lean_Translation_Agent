import Mathlib

open Equiv
open List

/--
Let n ≥ 2 and let α = (1 2) and β = (1 2 … n) in the symmetric group on n letters.
For any 1 < i < n we have
  (i i+1) = β^(i-1) * α * β^{-(i-1)} = β^(i-1) * α * β^(n-i+1).

This file gives the statement of that fact (no proof).
-/

theorem srdoty_alg_abstract_gps_1108 {n : ℕ} (hn : 2 ≤ n) :
  let α : Perm (Fin n) := Equiv.swap (1 : Fin n) (2 : Fin n)
  let β : Perm (Fin n) := Perm.cycle (List.map (fun k => (k + 1 : Fin n)) (List.range n)) in
  ∀ (i : ℕ), 1 < i → i < n →
    (Equiv.swap (Fin.mk (i - 1) (by decide)) (Fin.mk i (by decide)) : Perm (Fin n)) =
      β ^ (i - 1) * α * (β ^ (i - 1))⁻¹ ∧
    (Equiv.swap (Fin.mk (i - 1) (by decide)) (Fin.mk i (by decide)) : Perm (Fin n)) =
      β ^ (i - 1) * α * β ^ (n - i + 1) := by sorry
