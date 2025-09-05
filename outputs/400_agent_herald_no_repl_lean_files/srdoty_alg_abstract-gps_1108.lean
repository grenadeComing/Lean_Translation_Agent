import Mathlib
open Equiv
open Equiv.Perm

/--
Let n ≥ 2 and let α = (1,2) and β = (1,2,…,n) ∈ Sym_n. For any 1 < i < n,
we have (i,i+1) = β^(i-1) * α * β^{-(i-1)} = β^(i-1) * α * β^{n-i+1}.

This statement is written using 0-based `Fin n` indices: the transposition (i,i+1)
from the informal statement corresponds to `swap (i-1) i` in `Fin n`.
-/
theorem adjacent_transposition_as_conjugate {n : ℕ} (hn : 2 ≤ n)
  (i : ℕ) (hi_pos : 1 < i) (hi_lt : i < n)
  (α : Perm (Fin n)) (β : Perm (Fin n))
  (hα : α = swap (0 : Fin n) 1) (hβ_order : β ^ n = 1) :
  let t := swap (i - 1) (i : ℕ)
  show t = (β ^ (i - 1)) * α * (β ^ (i - 1))⁻¹ ∧ t = (β ^ (i - 1)) * α * (β ^ (n - i + 1)) := by sorry