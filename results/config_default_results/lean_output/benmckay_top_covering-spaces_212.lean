import Mathlib

/-!
Suppose that X is a metric space and that Γ acts on X by isometries.
We formalise the statement: Γ acts on X as a covering action iff the action is free with discrete orbits.

We do not provide a proof here; the statement ends with `:= by sorry` as requested.
-/

universe u v

variables (Γ : Type u) (X : Type v)

variable [Group Γ]
variable [SMul Γ X]
variable [MulAction Γ X]
variable [PseudoEMetricSpace X]
variable [IsIsometricSMul Γ X]

/-- A covering action: each point has a radius ε>0 such that the γ-translates of the ε-ball
    around the point are disjoint from the original ball for all nontrivial γ. -/
def IsCoveringAction : Prop :=
  ∀ x : X, ∃ ε : ENNReal, 0 < ε ∧ ∀ γ : Γ, γ ≠ 1 → ∀ y, y ∈ EMetric.ball x ε → (γ • y) ∉ EMetric.ball x ε

/-- A free action: only the identity fixes any point. -/
def IsFreeAction : Prop :=
  ∀ (γ : Γ) (x : X), γ • x = x → γ = 1

/-- Orbits are discrete: for each x there is ε>0 such that the only point of the orbit
    in the ε-ball around x is x itself. -/
def HasDiscreteOrbits : Prop :=
  ∀ x : X, ∃ ε : ENNReal, 0 < ε ∧ ∀ γ : Γ, γ • x ∈ EMetric.ball x ε → γ = 1

/-- Main statement: for isometric actions on a metric space, being a covering action
    is equivalent to being free with discrete orbits. -/
theorem is_covering_action_iff_is_free_and_discrete_orbits :
  IsCoveringAction Γ X ↔ IsFreeAction Γ X ∧ HasDiscreteOrbits Γ X := by sorry
