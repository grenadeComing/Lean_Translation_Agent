import Mathlib

universe u

variable {Γ : Type u} [Group Γ]

-- Placeholder for "locally simply connected"; mathlib may not expose this exact name,
-- so we introduce a lightweight class to express the hypothesis.
class LocallySimplyConnected (X : Type u) [TopologicalSpace X] : Prop :=

/-- Placeholder class saying the Γ-action on Y is a covering action. We only need it
    as a hypothesis to state the theorem; the proof is omitted. -/
class IsCoveringAction (Γ : Type u) [Group Γ] (Y : Type u) [TopologicalSpace Y] [MulAction Γ Y] : Prop :=

/-- If a group Γ has a covering action on a simply connected and locally simply connected
Hausdorff topological space Y, then the quotient map p : Y → Γ \ Y =: X is a universal
covering map, so there is a group isomorphism π_1(X) ≃ Γ.

The statement below uses placeholders for the "locally simply connected" and
"covering action" hypotheses; the proof is omitted (":= by sorry"). -/
theorem covering_action_yields_universal_cover
  {Y : Type u} [TopologicalSpace Y] [T2Space Y] [SimplyConnectedSpace Y] [LocallySimplyConnected Y]
  [MulAction Γ Y] [IsCoveringAction Γ Y] :
  ∃ (X : Type u) (instX : TopologicalSpace X) (p : Y → X) (x0 : X),
    IsCoveringMap (p) ∧ Nonempty (FundamentalGroup X x0 ≃ Γ) := by
  sorry
