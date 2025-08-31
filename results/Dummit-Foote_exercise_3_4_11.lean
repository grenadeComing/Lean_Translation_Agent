import Mathlib
open Subgroup
open Normal subgroup

/-- Prove that if $H$ is a nontrivial normal subgroup of the solvable group $G$ then there is a nontrivial subgroup $A$ of $H$ with $A \unlhd G$ and $A$ abelian. -/
theorem step_up_abelian_in_nontrivial_normal_subgroup {G : Type*} [Group G] [IsSolvable G]
 (H : Subgroup G) [H.Normal] : H ≠ ⊥ → ∃ A ≤ H, A.Normal ∧ A ≠ ⊥ ∧ IsAbelian A := sorry