import Mathlib

/-- Placeholder for a covering action: in practice this means the action is properly discontinuous,
free, and such that the quotient map is a covering map. We keep it as a propositional placeholder
since the full development is not requested here. -/
def CoveringAction (Γ : Type _) [Group Γ] (Y : Type _) [TopologicalSpace Y] [MulAction Γ Y] : Prop :=
  True

/-- Placeholder for the property "locally simply connected". -/
def LocallySimplyConnectedSpace (X : Type _) [TopologicalSpace X] : Prop := True

section covering_action_universal_cover

variable {Γ : Type _} [Group Γ]
variable {Y : Type _} [TopologicalSpace Y] [MulAction Γ Y]
variable [SimplyConnectedSpace Y]
variable (h_loc : LocallySimplyConnectedSpace Y)

/-- Orbit relation for the Γ-action on Y. -/
def orbit_rel (y y' : Y) : Prop := ∃ g : Γ, g • y = y'

/-- The orbit relation as a Setoid. -/
instance orbit_setoid : Setoid Y :=
  { r := orbit_rel,
    iseqv :=
      ⟨
        -- refl
        by
          intro y; use (1 : Γ); simp,
        -- symm
        by
          intros x y ⟨g, hg⟩; use g⁻¹; calc
            g⁻¹ • y = g⁻¹ • (g • x) := by rw [hg]
            _ = (g⁻¹ * g) • x := by rw [mul_smul]
            _ = 1 • x := by rw [inv_mul_self]
            _ = x := by simp,
        -- trans
        by
          intros x y z ⟨g1, h1⟩ ⟨g2, h2⟩; use (g2 * g1); calc
            (g2 * g1) • x = g2 • (g1 • x) := by rw [mul_smul]
            _ = g2 • y := by rw [h1]
            _ = z := h2
      ⟩ }

/-- The quotient space X = Γ \ Y. -/
def X : Type _ := Quotient (orbit_setoid : Setoid Y)

/-- We assume the quotient is given the quotient topology; in this file we keep it abstract. -/
variable [TopologicalSpace (X)]

/-- The canonical quotient map p : Y → X. -/
def p : Y → X := Quotient.mk

/-- Main statement: under a covering action, the quotient map is a covering map and the
fundamental group of the quotient (based at some x0) is isomorphic to Γ. The proof is omitted. -/
theorem covering_action_yields_universal_cover
  {Γ : Type _} [Group Γ]
  {Y : Type _} [TopologicalSpace Y] [MulAction Γ Y]
  [SimplyConnectedSpace Y]
  (h_loc : LocallySimplyConnectedSpace Y)
  (h_action : CoveringAction Γ Y) :
  IsCoveringMap (p : Y → X) ∧ ∃ (x0 : X) (y0 : Y), p y0 = x0 ∧ (FundamentalGroup X x0 ≃ Γ) :=
by
  -- proof omitted
  sorry

end covering_action_universal_cover
