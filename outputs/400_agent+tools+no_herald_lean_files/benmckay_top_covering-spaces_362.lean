import Mathlib

/-!
Simple formalization of the uniqueness of lifts for a covering map.
We do not develop the full notion of covering maps here; instead we
introduce a placeholder predicate `is_covering_map` so the statement
matches the informal text. The proof is omitted (`sorry`).
-/

universe u v w

variable {X : Type u} {Y : Type v} {Z : Type w}
variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]

/-- Placeholder predicate meaning “f is a covering map”.  In a real
development this would be replaced by the appropriate definition from
mathlib. -/
def is_covering_map (f : X → Y) : Prop := True

/-- If f : X → Y is a covering map (placeholder) and X is Hausdorff,
then two lifts g₁,g₂ : Z → X with the same projection and which agree
at one point are equal.  The proof is omitted. -/
theorem covering_map_lift_unique (f : X → Y) (hf : is_covering_map f)
  (hX : T2Space X) {g₁ g₂ : Z → X} (hfg : f ∘ g₁ = f ∘ g₂) {z0 : Z}
  (h0 : g₁ z0 = g₂ z0) : g₁ = g₂ := by sorry
