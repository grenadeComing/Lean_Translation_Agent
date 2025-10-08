import Mathlib

open Equiv

/--
Let n ≥ 2 and let α = (1 2) and β = (1 2 ... n) ∈ Sym_n.
For any 1 < i < n, (i i+1) = β^(i-1) * α * β^{-(i-1)} = β^(i-1) * α * β^(n-i+1).
The proof is omitted (``by sorry'').
-/
theorem srdoty_alg_abstract_gps_1108 (n : ℕ) (hn : 2 ≤ n) (hnz : NeZero n) (i : ℕ) (hi : 1 < i ∧ i < n) :
  let α : Perm (Fin n) := Equiv.swap (Fin.ofNat n 0) (Fin.ofNat n 1)
  let β : Perm (Fin n) := Equiv.ofBijective (fun k : Fin n => Fin.ofNat n (k.val + 1)) (by
    have : Function.Bijective (fun k : Fin n => Fin.ofNat n (k.val + 1)) := by sorry
    exact this)
  (Equiv.swap (Fin.ofNat n (i - 1)) (Fin.ofNat n i)) = (β ^ (i - 1)) * α * (β ^ (n - i + 1)) := by sorry