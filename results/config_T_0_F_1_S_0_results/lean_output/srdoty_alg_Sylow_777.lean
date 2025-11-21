import Mathlib

theorem srdoty_alg_Sylow_777 (n : ℕ) (hn : 6 ≤ n)
  {N : Subgroup (Equiv.Perm (Fin n))}
  (hN_sub : N ≤ MonoidHom.ker (Equiv.Perm.sign : Equiv.Perm (Fin n) →* ℤˣ))
  (hN_proper : N ≠ MonoidHom.ker (Equiv.Perm.sign : Equiv.Perm (Fin n) →* ℤˣ))
  (hN_normal : ∀ g : Equiv.Perm (Fin n), g ∈ MonoidHom.ker (Equiv.Perm.sign : Equiv.Perm (Fin n) →* ℤˣ) → ∀ τ, τ ∈ N → g * τ * g⁻¹ ∈ N) :
  ∀ i : Fin n, ∀ σ : Equiv.Perm (Fin n),
    σ ∈ MonoidHom.ker (Equiv.Perm.sign : Equiv.Perm (Fin n) →* ℤˣ) ∧ σ i = i → σ ∈ N := by sorry
