import Mathlib

variable (Γ : Type*) [Group Γ]
variable (X : Type*) [MetricSpace X] [MulAction Γ X]

/-- The action is isometric: each group element acts by an isometry. -/
def is_isometric_action : Prop := ∀ (γ : Γ) (x y : X), dist (γ • x) (γ • y) = dist x y

/-- The action is a covering action: each point has a neighborhood lifted disjointly by nontrivial elements. -/
def covering_action : Prop :=
  ∀ x : X, ∃ r : ℝ, 0 < r ∧ ∀ γ : Γ, γ ≠ 1 → ((fun y => γ • y) '' Metric.ball x r ∩ Metric.ball x r) = ∅

/-- The action is free: no nontrivial element fixes any point. -/
def free_action : Prop := ∀ γ : Γ, γ ≠ 1 → ∀ x : X, γ • x ≠ x

/-- The orbit of a point under the action. -/
def orbit (x : X) : Set X := Set.range (fun γ : Γ => γ • x)

/-- Orbits are discrete: each orbit point has a neighborhood meeting the orbit only at that point. -/
def discrete_orbits : Prop :=
  ∀ x y, y ∈ orbit Γ X x → ∃ r : ℝ, 0 < r ∧ Metric.ball y r ∩ orbit Γ X x = {y}

/-- Main equivalence: for an isometric action on a metric space, covering action iff free + discrete orbits. -/
theorem covering_action_iff_free_and_discrete_orbits (h_iso : is_isometric_action Γ X) :
  covering_action Γ X ↔ (free_action Γ X ∧ discrete_orbits Γ X) := by sorry
