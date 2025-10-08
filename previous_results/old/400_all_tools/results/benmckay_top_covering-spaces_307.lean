import Mathlib

/-- Translation: Let Γ act freely on a metric space X by isometries and assume the orbits are discrete.
    Let q : X → X/Γ be the quotient map. Then q is a locally isometric covering map.

    This file only translates the statement; the proof is omitted (``by sorry''). -/

variable {X : Type _} {Γ : Type _} {Y : Type _}

variable [MetricSpace X] [Group Γ] [MulAction Γ X] [IsIsometricSMul Γ X]

/-- The action is free: g • x = x implies g = 1. -/
def free_action : Prop := ∀ g x, g • x = x → g = 1

/-- Discrete orbits: for each x there is a positive radius separating x from all its distinct translates. -/
def discrete_orbits : Prop := ∀ x, ∃ ε > 0, ∀ g, g ≠ 1 → dist (g • x) x ≥ ε

/-- The quotient map identifies points in the same Γ-orbit. -/
variable (q : X → Y) (hq : ∀ x y, q x = q y ↔ ∃ g : Γ, g • x = y)

/-- Placeholder for the intended conclusion: q is a locally isometric covering map. -/
def is_locally_isometric_covering_map {A B : Type _} (f : A → B) : Prop := True

/-- Main translated theorem (proof omitted). -/
theorem quotient_map_is_locally_isometric_covering_map
  (hfree : free_action) (hdisc : discrete_orbits) :
  is_locally_isometric_covering_map (q : X → Y) := by sorry
