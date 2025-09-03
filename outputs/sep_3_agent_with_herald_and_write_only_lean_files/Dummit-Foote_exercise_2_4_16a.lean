import Mathlib
open Subgroup

/-- A subgroup $M$ of a group $G$ is called a maximal subgroup if $M \neq G$ and the only subgroups of $G$ which contain $M$ are $M$ and $G$. Prove that if $H$ is a proper subgroup of the finite group $G$ then there is a maximal subgroup of $G$ containing $H$.

Save it to: Dummit-Foote_exercise_2_4_16a.lean -/
theorem exists_max_subgroup_of_proper_subgroup (G : Type*) [Group G] [Finite G] (H : Subgroup G) :
    H < ⊤ → ∃ M : Subgroup G, M.IsMaximal ∧ H ≤ M := by sorry
