import Mathlib

variable {G : Type*} [Group G] {p : ℕ} {P H : Subgroup G}

open Subgroup

/-- If P is a Sylow p-subgroup of G and P ≤ H, then the comap of P along the inclusion H.subtype
    is a Sylow p-subgroup of H. -/
theorem sylow_of_subgroup_of_contain (hP : IsSylow p G P) (hPsub : P ≤ H) :
  IsSylow p H (Subgroup.comap (H.subtype : H →* G) P) := by sorry
