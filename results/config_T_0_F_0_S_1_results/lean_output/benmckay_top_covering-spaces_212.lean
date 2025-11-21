import Mathlib

/-!
Statement: Suppose that X is a metric space and that Γ acts on X by isometries. Then
Γ acts on X as a covering action iff the action is free with discrete orbits.

This file contains only the formal statement (no proof).
-/

open Set Metric

theorem covering_action_iff_free_and_discrete_orbits {Γ : Type _} [Group Γ] {X : Type _} [MetricSpace X] [MulAction Γ X]
  (h_isometry : ∀ γ : Γ, Isometry (fun x => γ • x)) :
  (
    -- covering action: every point has an open neighborhood U such that the translates g • U
    -- are disjoint from U for all nontrivial g
    ∀ x : X, ∃ U : Set X, IsOpen U ∧ x ∈ U ∧ ∀ γ : Γ, γ ≠ 1 → ((γ • U) ∩ U) = ∅
  ) ↔ (
    -- free: only the identity fixes every point
    (∀ γ : Γ, (∀ x : X, γ • x = x) → γ = 1) ∧
    -- discrete orbits: for each x, the orbit {g • x | g ∈ Γ} is a discrete subset of X
    (∀ x : X, ∀ y ∈ (Set.range fun g => g • x), ∃ ε : _ , 0 < ε ∧ ∀ z, z ∈ (Set.range fun g => g • x) → dist z y < ε → z = y)
  ) := by sorry