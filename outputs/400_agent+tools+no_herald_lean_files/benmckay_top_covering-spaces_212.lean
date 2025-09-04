import Mathlib

/-!
Translate: Suppose that X is a metric space and that Γ acts on X by isometries. Prove that
Γ acts on X as a covering action if and only if the action is free with discrete orbits.

We only state the theorem (no proof) and end with `:= by sorry` as requested.
-/

open Set

variable (Γ : Type*) [Group Γ]
variable (X : Type*) [MetricSpace X]
variable [MulAction Γ X]

/-- The group acts by isometries: each group element acts as an isometry. -/
def isometric_action := ∀ g : Γ, Isometry (fun x : X => g • x)

/-- A covering action: every point has a neighborhood U such that distinct translates of U are disjoint. -/
def covering_action : Prop :=
  ∀ x : X, ∃ U : Set X, IsOpen U ∧ x ∈ U ∧ ∀ g : Γ, g ≠ (1 : Γ) → (image (fun y => g • y) U ∩ U) = ∅

/-- Free action: no nontrivial group element fixes any point. -/
def free_action : Prop := ∀ g : Γ, g ≠ (1 : Γ) → ∀ x : X, g • x ≠ x

/-- Discrete orbits: each orbit is a discrete subset of X. We express this by requiring that
there is a positive radius around each point meeting the orbit only in that point. -/
def discrete_orbits : Prop :=
  ∀ x : X, ∃ (ε : ℝ), 0 < ε ∧ ∀ g : Γ, g • x ≠ x → dist (g • x) x ≥ ε

theorem covering_action_iff_free_and_discrete_orbits
  (h_iso : isometric_action Γ X) :
  covering_action Γ X ↔ (free_action Γ X ∧ discrete_orbits Γ X) := by sorry
