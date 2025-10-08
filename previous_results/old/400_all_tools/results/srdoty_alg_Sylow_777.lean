import Mathlib

/-- Let n ≥ 6 and let N be a proper normal subgroup of A_n (the alternating group on Fin n).
    For each i in Fin n define G_i := {σ ∈ A_n | σ i = i} (the point-stabilizer inside A_n).
    Then N contains every G_i. -/
theorem srdoty_alg_Sylow_777 (n : Nat) (hn : 6 ≤ n)
  {N : Subgroup (Equiv.Perm (Fin n))}
  (hN_sub : N ≤ alternatingGroup (Fin n))
  (hN_normal : ∀ g, g ∈ alternatingGroup (Fin n) → ∀ x, x ∈ N → g * x * g⁻¹ ∈ N)
  (hN_proper : N ≠ alternatingGroup (Fin n)) :
  ∀ i : Fin n, ∀ σ : Equiv.Perm (Fin n), σ ∈ alternatingGroup (Fin n) → σ i = i → σ ∈ N := by sorry
