import Mathlib

universe u v w

variable {X : Type u} {Y : Type v} {Z : Type w}

variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
variable [T2Space Y]  -- Y is Hausdorff

/-- Abstract predicates for covering maps and universal coverings. We do not assume particular
    Mathlib definitions here; instead we state the universal property in terms of these predicates. -/
constant IsCoveringMap : {A : Type _} {B : Type _} → (A → B) → Prop
constant IsUniversalCoveringMap : {A : Type _} {B : Type _} → (A → B) → Prop

/-- A based morphism between covering maps f : X → Y and g : Z → Y is a map h : X → Z which
    preserves basepoints and commutes with the coverings. -/
def IsBasedMorphism {X Z Y : Type _} (f : X → Y) (g : Z → Y) (x0 : X) (z0 : Z) (h : X → Z) : Prop :=
  h x0 = z0 ∧ g ∘ h = f

/-- Suppose Y is Hausdorff and admits a universal covering space. A covering map
    (X,x0) → (Y,y0) is universal iff for every covering map (Z,z0) → (Y,y0) there
    exists a unique morphism (X,x0) → (Z,z0).

    We formulate this using the abstract predicates `IsCoveringMap` and
    `IsUniversalCoveringMap`. The proof is omitted (`sorry`). -/
theorem covering_map_is_universal_iff_lifts_unique
  {X Y : Type u} [TopologicalSpace X] [TopologicalSpace Y] [T2Space Y]
  {f : X → Y} (x0 : X) (y0 : Y) (hf : IsCoveringMap (f)) (hfb : f x0 = y0) :
  IsUniversalCoveringMap (f) ↔
    ∀ (Z : Type w) [TopologicalSpace Z] (g : Z → Y) (z0 : Z) (hg : IsCoveringMap (g))
      (hgb : g z0 = y0), ∃! (h : X → Z), IsBasedMorphism f g x0 z0 h := by
  sorry
