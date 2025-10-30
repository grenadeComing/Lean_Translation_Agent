import Mathlib

universe u v

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

def is_closed_map (f : X → Y) : Prop :=
  ∀ s : Set X, IsClosed s → IsClosed (f '' s)

def is_proper (f : X → Y) : Prop :=
  ∀ K : Set Y, IsCompact K → IsCompact (f ⁻¹' K)

def fibers_compact (f : X → Y) : Prop :=
  ∀ y : Y, IsCompact (f ⁻¹' {y})

theorem proper_iff_closed_fibers_compact
  (f : X → Y) (hcont : Continuous f) [T2Space Y] :
  is_proper f ↔ ((fibers_compact f) ∧ is_closed_map f) := by
  sorry
