import Mathlib

variables {X : Type _} [TopologicalSpace X]
variable (π1X : Type _)
variable (Γ : Set π1X)

/-- Let X be path connected and locally simply connected and let Γ be a subgroup of π₁(X).
There exists a connected covering p : X_Γ → X whose induced map on π₁ has image Γ, and this covering
is unique up to unique isomorphism of coverings. This file records the statement only (no proof).
-/
theorem exists_connected_covering_of_subgroup
  (h_path_connected : Prop) (h_locally_simply_connected : Prop) :
  ∃ (p_space : Type _) (p_top : TopologicalSpace p_space) (p_map : p_space → X)
    (is_covering : Prop) (is_connected : Prop) (pπ1 : Type _) (p_star : pπ1 → π1X),
    Set.range p_star = Γ := by
  sorry
