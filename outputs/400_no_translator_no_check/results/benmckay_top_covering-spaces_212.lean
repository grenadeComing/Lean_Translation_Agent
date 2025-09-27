import Mathlib

open Set

section covering_action_vs_free_discrete

variables {Γ : Type*} [Group Γ] {X : Type*} [PseudoEMetricSpace X]

/-- A covering action: for each x there is an open neighbourhood U of x
    such that for g ≠ 1 the translate `act g '' U` is disjoint from U. -/
def is_covering_action (act : Γ → X → X) : Prop :=
  ∀ x : X, ∃ U : Set X, IsOpen U ∧ x ∈ U ∧ ∀ g : Γ, g ≠ (1 : Γ) → (image (act g) U ∩ U = ∅)

/-- The action is free: no nontrivial group element fixes any point. -/
def is_free_action (act : Γ → X → X) : Prop :=
  ∀ g : Γ, g ≠ (1 : Γ) → ∀ x : X, act g x ≠ x

/-- Orbits are discrete: each orbit Γ·x is a discrete subset of X in the sense that x has an
    open neighbourhood meeting the orbit only at x. -/
def has_discrete_orbits (act : Γ → X → X) : Prop :=
  ∀ x : X, ∃ U : Set X, IsOpen U ∧ x ∈ U ∧ U ∩ range (fun g => act g x) = {x}

/-- Main equivalence: for an action by isometries on a metric space, being a covering action is
    equivalent to being free together with having discrete orbits. -/
theorem covering_action_iff_free_and_discrete_orbits
  (act : Γ → X → X)
  (act_one : ∀ x, act (1 : Γ) x = x)
  (act_mul : ∀ g h x, act (g * h) x = act g (act h x))
  (h_isom : ∀ g, Isometry (act g)) :
  is_covering_action act ↔ (is_free_action act ∧ has_discrete_orbits act) := by sorry

end covering_action_vs_free_discrete
