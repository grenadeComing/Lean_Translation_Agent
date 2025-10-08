import Mathlib

/-- Let n ≥ 6 and let N be a proper normal subgroup of A_n (the alternating group on Fin n).
    Then N contains every point stabilizer G_i = {σ ∈ A_n | σ i = i} for each i : Fin n. -/
theorem alternating_proper_normal_contains_point_stabilizers (n : ℕ) (hn : 6 ≤ n)
  (N : Subgroup (Equiv.Perm (Fin n)))
  (hN_normal : ∀ g x, x ∈ N → g * x * g⁻¹ ∈ N)
  (hN_proper : N ≠ MonoidHom.ker (Equiv.Perm.sign : Equiv.Perm (Fin n) →* _)) :
  ∀ (i : Fin n) (σ : Equiv.Perm (Fin n)),
    σ ∈ MonoidHom.ker (Equiv.Perm.sign : Equiv.Perm (Fin n) →* _) → σ i = i → σ ∈ N := by sorry
