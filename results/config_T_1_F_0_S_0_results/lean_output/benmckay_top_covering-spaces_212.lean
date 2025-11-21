import Mathlib

/-- Suppose that X is a metric space and that Γ acts on X by isometries. We state the
equivalence: Γ acts on X as a covering action iff the action is free with discrete
orbits. The proof is omitted. -/

universe u v

variables {Γ : Type u} [Group Γ]
variables {X : Type v} [MetricSpace X] [MulAction Γ X]

/-- Predicate: Γ acts on X as a covering action. -/
constant IsCoveringAction (Γ : Type u) (X : Type v) [MulAction Γ X] : Prop

/-- Predicate: Γ acts freely on X. -/
constant IsFreeAction (Γ : Type u) (X : Type v) [MulAction Γ X] : Prop

/-- Predicate: every orbit of the Γ-action on X is a discrete subset (in the metric topology). -/
constant DiscreteOrbits (Γ : Type u) (X : Type v) [TopologicalSpace X] [MulAction Γ X] : Prop

/-- The action is assumed to be by isometries. -/
variable (h_isometric : ∀ g : Γ, Isometry (fun x : X => g • x))

theorem covering_action_iff_free_and_discrete_orbits
  {Γ : Type u} [Group Γ] {X : Type v} [MetricSpace X] [MulAction Γ X]
  (h_isometric : ∀ g : Γ, Isometry (fun x : X => g • x)) :
  IsCoveringAction Γ X ↔ (IsFreeAction Γ X ∧ DiscreteOrbits Γ X) := by sorry