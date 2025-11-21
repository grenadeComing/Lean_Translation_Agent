import Mathlib

/--
Let a group Γ act freely on a metric space X by isometries, and assume all orbits are discrete.
Then the canonical quotient map q : X → X/Γ (the orbit space) is a locally isometric covering map.

This statement asserts existence of the natural quotient type Y := X/Γ carrying a metric for which
the projection is a local isometry and a covering map; here we encode the action-freeness,
isometricity, and discreteness of orbits as hypotheses.
-/
theorem quotient_map_is_locally_isometric_covering {X : Type _} [MetricSpace X]
  {Γ : Type _} [Group Γ] [MulAction Γ X]
  (free_action : ∀ (γ : Γ) (x : X), γ • x = x → γ = 1)
  (acts_by_isometries : ∀ (γ : Γ), Isometry (fun x : X => γ • x))
  (discrete_orbits : ∀ (x : X), ∃ (ε : ℝ), 0 < ε ∧ ∀ (γ : Γ), γ ≠ 1 → dist (γ • x) x ≥ ε) :
  ∃ (Y : Type _) (q : X → Y) [MetricSpace Y],
    (∀ x y, q x = q y ↔ ∃ γ : Γ, γ • x = y) ∧
    IsLocalIsometry q ∧ IsCoveringMap q := by sorry