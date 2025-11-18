import Mathlib

universe u

variable {X Y : Type u} [TopologicalSpace X] [TopologicalSpace Y]

/-- Let Y be a locally compact Hausdorff space and f : X → Y a closed injection.
    Prove that f is a homeomorphism onto its image. -/
def closed_injective_homeomorph_onto_image
  (f : X → Y) (hf : Function.Injective f)
  (hclosed : ∀ {s : Set X}, IsClosed s → IsClosed (f '' s)) :
  X ≃ₜ { y : Y // y ∈ Set.range f } := by
  -- translation of the mathematical statement: f is a homeomorphism from X onto its image
  -- The actual proof is omitted in this placeholder.
  sorry
