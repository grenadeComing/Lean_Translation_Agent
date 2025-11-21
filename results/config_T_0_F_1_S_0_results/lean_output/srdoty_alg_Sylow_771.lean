import Mathlib

open Equiv

theorem srdoty_alg_Sylow_771 (n : ℕ) (hn : 6 ≤ n)
  (N : Subgroup (Equiv.Perm (Fin n)))
  (hsub : N ≤ MonoidHom.ker (Equiv.Perm.sign : Equiv.Perm (Fin n) →* _))
  (hprop : N ≠ MonoidHom.ker (Equiv.Perm.sign : Equiv.Perm (Fin n) →* _))
  (hnorm : ∀ (g x : Equiv.Perm (Fin n)), g ∈ MonoidHom.ker (Equiv.Perm.sign : Equiv.Perm (Fin n) →* _) → x ∈ N → g * x * g⁻¹ ∈ N)
  (i : Fin n) :
  ∀ σ : Equiv.Perm (Fin n), σ ∈ MonoidHom.ker (Equiv.Perm.sign : Equiv.Perm (Fin n) →* _) → σ i = i → σ ∈ N := by sorry
