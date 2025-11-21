import Mathlib

universe u v

/-- Let X be a metric space and Γ a group acting freely on X by isometries, with discrete orbits.
    Then the natural quotient map q : X → X/Γ is a locally isometric covering map.
    (Statement only; no proof.) -/
theorem quotient_locally_isometric_covering {X : Type u} {Γ : Type v}
  [MetricSpace X] [Group Γ] [MulAction Γ X] [IsometricSMul Γ X]
  (free : ∀ (g : Γ) (x : X), g • x = x → g = (1 : Γ))
  (discrete_orbits : ∀ x : X, ∃ ε : ℝ, ε > 0 ∧ ∀ g : Γ, g ≠ (1 : Γ) → dist (g • x) x ≥ ε) :
  ∃ (m : MetricSpace (Quotient (MulAction.orbitRel Γ X))),
    let _inst : MetricSpace (Quotient (MulAction.orbitRel Γ X)) := m in
      IsCoveringMap (Quotient.mk : X → Quotient (MulAction.orbitRel Γ X)) ∧
      (∀ x : X, ∃ ε : ℝ, ε > 0 ∧ ∀ y z : X,
        dist x y < ε → dist x z < ε →
          dist (Quotient.mk y) (Quotient.mk z) = dist y z) := by sorry
