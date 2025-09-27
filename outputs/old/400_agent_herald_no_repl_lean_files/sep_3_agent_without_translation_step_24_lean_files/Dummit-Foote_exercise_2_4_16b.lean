import Mathlib

open Subgroup

variables {G : Type*} [Group G]

theorem rotation_subgroup_maximal {r s : G} (n : ℕ)
  (h_rn : r ^ n = (1 : G)) (h_s2 : s ^ 2 = (1 : G)) (h_conj : s * r * s = r⁻¹)
  (h_gen : Subgroup.closure ({r, s} : Set G) = (⊤ : Subgroup G)) :
  ∀ (H : Subgroup G), Subgroup.closure ({r} : Set G) ≤ H → H ≠ Subgroup.closure ({r} : Set G) → H = (⊤ : Subgroup G) := by
  sorry
