import Mathlib

universe u v w

open Topology

variable {X : Type u} [TopologicalSpace X]
variable {Y : Type v} [TopologicalSpace Y]
variable {Z : Type w} [TopologicalSpace Z]

/-- Placeholder definition of a covering map. In a full development this would assert the usual
existence of evenly covered neighborhoods. For the purpose of this file we leave it opaque. -/
def IsCovering {A : Type*} {B : Type*} [TopologicalSpace A] [TopologicalSpace B] (f : A → B) : Prop :=
  True

/-- If X → Y and Y → Z are covering maps then the composition X → Z is a covering map. -/
theorem covering_compose {f : X → Y} {g : Y → Z} (hf : IsCovering (f)) (hg : IsCovering (g)) :
  IsCovering (g ∘ f) := by sorry
