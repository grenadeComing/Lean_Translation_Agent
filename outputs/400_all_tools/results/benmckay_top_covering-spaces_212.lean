import Mathlib

open Pointwise Set

variable {X : Type*} [PseudoMetricSpace X]
variable {Γ : Type*} [Monoid Γ] [MulAction Γ X]

/-- The group action is a covering action: every point has a neighborhood whose translates are pairwise disjoint. -/
def covering_action : Prop :=
  ∀ x : X, ∃ U : Set X, IsOpen U ∧ x ∈ U ∧ (∀ (γ γ' : Γ), γ ≠ γ' → Disjoint (γ • U) (γ' • U))

/-- The action is free. -/
def action_free : Prop :=
  ∀ γ : Γ, (∀ x : X, γ • x = x) → γ = 1

/-- Orbits are discrete in the metric sense: for each x there is an ε>0 such that the ε-ball meets the orbit only at x. -/
def discrete_orbits : Prop :=
  ∀ x : X, ∃ ε : ℝ, 0 < ε ∧ (Metric.ball x ε ∩ {y | ∃ γ : Γ, y = γ • x}) = {x}

/-- If the action is by isometries, covering_action ↔ (action_free ∧ discrete_orbits). -/
theorem covering_action_iff_free_and_discrete (h_isometry : ∀ γ : Γ, Isometry (fun x => γ • x)) :
  covering_action ↔ action_free ∧ discrete_orbits := by sorry
