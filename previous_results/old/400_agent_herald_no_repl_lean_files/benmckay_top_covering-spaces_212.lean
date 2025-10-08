import Mathlib

/-!
Suppose that `X` is a metric space and that `Γ` acts on `X` by isometries.
Prove that `Γ` acts on `X` as a covering action if and only if the action is free with discrete orbits.

This file gives a formal statement of that equivalence. The proof is omitted (`by sorry`).
-/

variable {X : Type _} [MetricSpace X]
variable {Γ : Type _} [Group Γ] [MulAction Γ X]

open Metric

theorem covering_action_iff_free_and_discrete_orbits_of_isometric_action
  (h_isometry : ∀ γ : Γ, Isometry (fun x : X => γ • x)) :
  CoveringAction Γ X ↔
    (∀ (γ : Γ) (x : X), γ ≠ 1 → γ • x ≠ x) ∧
    (∀ x : X, ∃ r : ℝ, 0 < r ∧ ∀ γ : Γ, γ ≠ 1 → dist (γ • x) x ≥ r) := by sorry
