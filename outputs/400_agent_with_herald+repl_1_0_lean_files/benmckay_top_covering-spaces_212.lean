import Mathlib

/-
Suppose X is a metric space and Γ acts on X by isometries. Prove that Γ acts on X as a covering action iff
the action is free with discrete orbits.

We formalize the statement (without proof):
- covering_action: for all x, there is an open neighbourhood U of x such that for all γ ≠ 1, (γ • U) ∩ U = ∅.
- free: ∀ γ ≠ 1, ∀ x, γ • x ≠ x.
- discrete_orbits: ∀ x, ∃ r > 0, ∀ γ, dist (γ • x) x < r → γ = 1.
-/

variables {X : Type _} [MetricSpace X] {Γ : Type _} [Group Γ] [MulAction Γ X]

open Set

theorem covering_action_iff_free_discrete
  (h_isom : ∀ γ : Γ, ∀ x y : X, dist (γ • x) (γ • y) = dist x y) :
  (∀ x : X, ∃ U : Set X, IsOpen U ∧ x ∈ U ∧ ∀ γ : Γ, γ ≠ 1 → (γ • U) ∩ U = ∅) ↔
  ((∀ γ : Γ, γ ≠ 1 → ∀ x : X, γ • x ≠ x) ∧
   (∀ x : X, ∃ r : ℝ, 0 < r ∧ ∀ γ : Γ, dist (γ • x) x < r → γ = 1)) :=
by sorry
