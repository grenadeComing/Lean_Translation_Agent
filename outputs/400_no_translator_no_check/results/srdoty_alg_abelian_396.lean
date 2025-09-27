import Mathlib

open Nat

/-!
Let p be a prime. Show that the composition factors of any finite abelian p-group
are all isomorphic to Z_p.
We state this for multiplicative abelian groups (CommGroup) and use ZMod p.
-/

theorem composition_factors_of_finite_abelian_p_group {p : ℕ} (hp : p.Prime) {G : Type*}
  [CommGroup G] [Fintype G] (hpg : IsPGroup p G) :
  ∀ (H : Subgroup G), IsSimpleGroup (↥H) → Nonempty (↥H ≃* Multiplicative (ZMod p)) := by sorry
