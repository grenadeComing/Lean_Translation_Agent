import Mathlib

/-!
Let Γ act freely on a metric space X by isometries, and assume the orbits are discrete.
Then the quotient map X → X/Γ is a locally isometric covering map.

We state a convenient formalisation: the projection π : X → X/Γ is a covering map,
and for each x there is an ε-ball around x on which π is injective (hence an isometry
onto its image because the action is by isometries).
-/

open Set Metric

variable {X : Type _} [PseudoEMetricSpace X] {Γ : Type _} [Group Γ] [MulAction Γ X]

/-- Hypothesis: the action is by isometries. -/
variable (h_isometry : ∀ g : Γ, Isometry (λ x => g • x))

/-- Hypothesis: the action is free (no nontrivial element fixes any point). -/
variable (h_free : ∀ (g : Γ) (x : X), g • x = x → g = 1)

/-- Hypothesis: orbits are discrete in the metric sense: each point has a ball
which meets its orbit only at that point (equivalently, other orbit points are at
uniformly positive distance). -/
variable (h_discrete : ∀ x : X, ∃ ε : ℝ, 0 < ε ∧ ∀ g : Γ, g ≠ (1 : Γ) → dist (g • x) x ≥ ε)

theorem free_discrete_isometric_action_quotient_is_covering :
  let π := Quotient.mk (MulAction.orbitRel Γ X) in
  IsCoveringMap (π : X → Quotient (MulAction.orbitRel Γ X)) ∧
  (∀ x : X, ∃ ε : ℝ, 0 < ε ∧ ∀ y z, y ∈ ball x ε → z ∈ ball x ε → (π y = π z → y = z)) :=
by sorry
